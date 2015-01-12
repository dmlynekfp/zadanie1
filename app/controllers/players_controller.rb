class PlayersController < ApplicationController
  def show
    @player= Player.find(params[:id])
    @characters=@player.characters
  end
end
