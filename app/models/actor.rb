class Actor < ActiveRecord::Base
  has_many :parts

  before_destroy :destroy_parts

  validates :l_name, presence: true
  validates :f_name, presence: true
  validates :s_name, presence: true
  validates :d_birthday, presence: true

  def destroy_parts
    self.parts.each{|x| x.destroy}
  end
end
