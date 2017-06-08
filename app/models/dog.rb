class Dog < ApplicationRecord
  belongs_to :owner

  has_many :walks, through: :owner
  has_many :walkers, through: :walks
end
