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

  def self.search(params)
    result = Film.eager_load(:parts, parts: :actor)

    if params['min_age'].present?
      result = result.where(min_age: params['min_age'])
    end
    if params['companies_f'].present?
      result = result.where(companies_f: params['companies_f'])
    end
    if params['country_f'].present?
      result = result.where(country_f: params['country_f'])
    end
    if params['lasting_f'].present?
      result = result.where(lasting_f: params['lasting_f'])
    end
    if params['genre_f'].present?
      result = result.where(genre_f: params['genre_f'])
    end
    if params['name_f'].present?
      result = result.where(name_f: params['name_f'])
    end

    if params['role_a'].present?
      result = result.where("parts.role_a": params['role_a'])
    end

    if params['f_name'].present?
      result = result.where("actors.f_name": params['f_name'])
    end
    if params['l_name'].present?
      result = result.where("actors.l_name": params['l_name'])
    end
    if params['s_name'].present?
      result = result.where("actors.s_name": params['s_name'])
    end
    if params['d_birthday'].present?
      result = result.where("actors.d_birthday": params['d_birthday'])
    end
    result.all
  end
end
