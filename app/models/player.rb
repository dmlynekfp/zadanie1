class Player < ActiveRecord::Base
  belongs_to :team, dependent: :destroy
  has_many :characters
  validates :name, length: {in: 6..20}
  validates_format_of       :email_adress,    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  accepts_nested_attributes_for :characters
end
