class Team < ActiveRecord::Base
  has_and_belongs_to_many :events
  has_many :players
  has_many :characters, through: :players
  belongs_to :country
  has_attached_file :logo, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'


  accepts_nested_attributes_for :players


  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  validates_length_of :name, in: 5..30



end
