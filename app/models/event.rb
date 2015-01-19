class Event < ActiveRecord::Base
  has_and_belongs_to_many :teams
  validates_length_of :name, in: 5..30

  accepts_nested_attributes_for :teams, allow_destroy: true
end
