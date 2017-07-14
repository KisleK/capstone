class AddImageToDogAndWalker2 < ActiveRecord::Migration[5.1]
  def change
    add_attachment :walkers, :image
    add_attachment :dogs, :image
  end
end
