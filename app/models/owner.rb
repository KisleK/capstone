class Owner < ApplicationRecord
  has_secure_password
  
  has_many :dogs
  has_many :walks

 
end
