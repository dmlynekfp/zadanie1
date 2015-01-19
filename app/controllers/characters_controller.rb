class CharactersController < ApplicationController
  def index
    @player=Player.find(params[:player_id])
  end

  def team_index
    @team=Team.find(params[:team_id])
  end



end
