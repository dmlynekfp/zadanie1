class Character < ActiveRecord::Base
  belongs_to :player, dependent: :destroy
  validates :name, length: {in: 6..20}
end
