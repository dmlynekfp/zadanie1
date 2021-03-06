class Player < ActiveRecord::Base
  belongs_to :team
  has_many :characters, dependent: :destroy
  validates_length_of :name, in: 6..30
  validates_format_of :email_adress, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  accepts_nested_attributes_for :characters,  allow_destroy: true

end
