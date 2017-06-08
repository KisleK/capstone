class Walker < ApplicationRecord
  has_many :walks
  has_many :owners, through: :walks
  has_many :dogs, through: :owners
end
