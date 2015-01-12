class Country < ActiveRecord::Base
  has_many :team
  #has many thougr
  validates :name, length: {in: 6..20}
end
