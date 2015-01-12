class Team < ActiveRecord::Base
  has_and_belongs_to_many :events
  has_many :players
  has_many :characters, through: :players
  belongs_to :country

  validates :name, length: {in: 6..20}
end
