class Part < ActiveRecord::Base
  belongs_to :film
  belongs_to :actor

  validates :role_a, presence: true
end
