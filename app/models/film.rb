class Film < ActiveRecord::Base
  has_many :parts
  has_many :addresses

  before_destroy :destroy_addresses_parts
  
  accepts_nested_attributes_for :parts, allow_destroy: true

  validates :name_f, presence: true
  validates :genre_f, presence: true
  validates :lasting_f, presence: true
  validates :country_f, presence: true
  validates :companies_f, presence: true
  validates :min_age, presence: true


  def destroy_addresses_parts
    self.addresses.each{|x| x.destroy}
    self.parts.each{|x| x.destroy}
  end
end
