class PlayersController < ApplicationController

  def index
    @team=Team.find_by(params[:id])
  end



  def show
    @player= Player.find(params[:id])
    @characters=@player.characters
  end


end
