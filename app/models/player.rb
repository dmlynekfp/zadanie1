class Player < ActiveRecord::Base
  belongs_to :team, dependent: :destroy
  has_many :characters
  validates :name, length: {in: 6..20}
  #validates_format_of       :email,    :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

end
