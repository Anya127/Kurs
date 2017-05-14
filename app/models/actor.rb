class Actor < ActiveRecord::Base
  has_many :parts


  validates :l_name, presence: true
  validates :f_name, presence: true
  validates :s_name, presence: true
  validates :d_birthday, presence: true  
end
