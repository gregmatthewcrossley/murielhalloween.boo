class TrickOrTreatersController < ApplicationController
  def index
    @trick_or_treaters = TrickOrTreater.all
    @destroyable_trick_or_treaters = @trick_or_treaters.destroyable_by_session(session.id.to_s)
  end

  def create
    @trick_or_treater = TrickOrTreater.new(trick_or_treater_params)
    @trick_or_treater.session_id = session.id
    @trick_or_treater.save
    redirect_to trick_or_treaters_path
  end

  def destroy
    @trick_or_treater = TrickOrTreater.find(params[:id])
    @trick_or_treater.destroy
    redirect_to trick_or_treaters_path
  end

  private

  def trick_or_treater_params
    params.require(:trick_or_treater).permit(:sensitivity)
  end

end
