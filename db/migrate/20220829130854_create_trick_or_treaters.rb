class CreateTrickOrTreaters < ActiveRecord::Migration[7.0]
  def change
    create_table :trick_or_treaters do |t|
      t.string :session_id, index: true, null: false
      t.string :sensitivity
      t.timestamps
    end
  end
end
