class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :player, index: true
      t.timestamps
    end
  end
end
