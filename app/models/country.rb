class Country < ActiveRecord::Base
  has_many :teams, dependent: :nullify
  #has many thougr
  validates_length_of :name, in: 5..30
end
