class Part < ActiveRecord::Base
  belongs_to :film
  belongs_to :actor

  validates :role_a, presence: true

  accepts_nested_attributes_for :actor, allow_destroy: true
end
