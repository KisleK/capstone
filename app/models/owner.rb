class Owner < ApplicationRecord
  has_many :dogs
  has_many :walks
end
