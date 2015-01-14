class CreateEventsTeams < ActiveRecord::Migration
  def change
    create_table :events_teams do |t|
      t.belongs_to :event, index: true
      t.belongs_to :team, index: true
    end
  end
end
