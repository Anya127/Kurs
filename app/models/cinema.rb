class Cinema < ActiveRecord::Base
  has_many :addresses

  before_destroy :destroy_address

  accepts_nested_attributes_for :addresses, allow_destroy: true

  validates :name_c, presence: true
  validates :address_c, presence: true

  def destroy_address
    self.addresses.each{|x| x.destroy}
  end
end
