class Film < ActiveRecord::Base
  has_many :parts
  has_many :addresses

  validates :name_f, presence: true
  validates :genre_f, presence: true
  validates :lasting_f, presence: true
  validates :country_f, presence: true
  validates :companies_f, presence: true
  validates :min_age, presence: true
end
