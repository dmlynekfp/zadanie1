class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email_adress
      t.belongs_to  :team, index: true
      t.timestamps
    end
  end
end
