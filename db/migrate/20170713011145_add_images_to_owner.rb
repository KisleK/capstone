class AddImagesToOwner < ActiveRecord::Migration[5.1]

  def change

    add_attachment :owners, :image

  end
end
