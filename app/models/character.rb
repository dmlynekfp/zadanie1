class Character < ActiveRecord::Base
  belongs_to :player
  validates_length_of :name, in: 5..30
end
