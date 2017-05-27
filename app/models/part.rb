class Part < ActiveRecord::Base
  belongs_to :film
  belongs_to :actor

  validates :role_a, presence: true
  validate :uniq_role_actor_in_film

  # В фильме нет повторяющейся роли с тем же атёром
  def uniq_role_actor_in_film
    if Film.find_by(id: film_id) && Part.find_by(role_a: role_a) && Actor.find_by(id: actor_id)
      errors.add(:role_a, "Роль с таким актёром уже существует")
    end
  end

  accepts_nested_attributes_for :actor, allow_destroy: true
end
