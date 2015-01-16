class PlayersController < ApplicationController

  def index
    @team=Team.find(params[:team_id])
  end



  def show
    @player= Player.find(params[:id])
    @characters=@player.characters
  end


end
