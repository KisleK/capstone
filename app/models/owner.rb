class Owner < ApplicationRecord
  has_secure_password
  
  has_many :dogs
  has_many :walks

  has_attached_file :image, :styles => { :medium => "300x300", :thumbnail => "200x200"}
  validates_attachment :image, content_type: { content_type:  ["image/jpg", "image/jpeg", "image/png"]}

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :bio, length: { maximum: 500 }
  validates :password, presence: true, on: :create
  validates :password, length: { in: 6..20 }, on: :create


end


