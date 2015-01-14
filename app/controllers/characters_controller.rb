class CharactersController < ApplicationController
  def index

    if params.has_key?(:player_id)
      @owner=Player.find(params[:player_id])
      @name=@owner.name
      @characters=@owner.characters

    else
      @owner=Team.find(params[:team_id])
      @name=@owner.name
      @characters=@owner.characters
    end


  end

  def character_for_player
    @player=Player.find_by(params[:id])

  end

  def character_for_team
    @team=Team.find_by(params[:id])

  end

end
