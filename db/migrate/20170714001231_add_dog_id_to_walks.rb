class AddDogIdToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :dog_id, :integer
  end
end
