class AddCountryRefToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :country, index: true
  end
end
