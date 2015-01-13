class CharactersController < ApplicationController
  def index
    @team=Team.find_by(params[:id])

  end

  def character_for_player
    @player=Player.find_by(params[:id])

  end

  def character_for_team
    @team=Team.find_by(params[:id])

  end

end
