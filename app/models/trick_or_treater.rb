class TrickOrTreater < ApplicationRecord

  before_save :downcase_fields

  scope :destroyable_by_session, ->(session_id) { where(session_id: session_id) }

  scope :with_sensitivities, -> { where.not(sensitivity: '') }
  scope :without_sensitivities, -> { where(sensitivity: '') }

  def self.sensitivity_counts
    with_sensitivities.group(:sensitivity).count
  end

  private

  def downcase_fields
    self.sensitivity.downcase!
  end
  
end
