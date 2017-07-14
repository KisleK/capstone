class Dog < ApplicationRecord
  belongs_to :owner

  has_many :walks,through: :owner
  has_many :walkers, through: :walks

  has_attached_file :image, :styles => { :medium => "300x300", :thumbnail => "200x200"}
  validates_attachment :image, content_type: { content_type:  ["image/jpg", "image/jpeg", "image/png"]}
  

  validates :name, presence: true
  validates :gender, presence: true
  validates :breed, presence: true
end
