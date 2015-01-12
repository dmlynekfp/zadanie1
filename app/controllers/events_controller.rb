class EventsController < ApplicationController


  def show
    @event= Event.find(params[:id])
    @teams = @event.teams
  end
end
