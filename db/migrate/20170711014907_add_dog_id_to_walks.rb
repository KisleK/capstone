class AddDogIdToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :dogs_id, :integer
  end
end
