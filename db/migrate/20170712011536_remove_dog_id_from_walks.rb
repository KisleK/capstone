class RemoveDogIdFromWalks < ActiveRecord::Migration[5.1]
  def change
    remove_column :walks, :dog_id, :integer
  end
end
