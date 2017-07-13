class Walker < ApplicationRecord
  has_secure_password
  
  has_many :walks
  has_many :owners, through: :walks
  has_many :dogs, through: :owners


  has_attched_file :image, :styles => { :medium => "300x300", :thumbnail => "200x200"}
  validates_attachment :image, content_type: { content_type:  ["image/jpg", "image/jpeg", "image/png"]}


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  
 
  validates :bio, length: { maximum: 500 }
  validates :password, presence: true, on: :create
  validates :password, length: { in: 6..20 }, on: :create
end
