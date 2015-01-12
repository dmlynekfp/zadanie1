class Event < ActiveRecord::Base
  has_and_belongs_to_many :teams
  validates :name, length: {in: 6..20}
end
