class Cinema < ActiveRecord::Base
  has_many :addresses

  validates :name_c, presence: true
  validates :address_c, presence: true
end
