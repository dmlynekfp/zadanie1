class CharactersController < ApplicationController
  def index
    @player=Player.find(params[:player_id])
  end

  def teamindex
    @team=Team.find(params[:team_id])
  end



  def character_for_player
    @player=Player.find_by(params[:id])

  end

  def character_for_team
    @team=Team.find_by(params[:id])

  end

end
