class RemoveWalkerFromWalks < ActiveRecord::Migration[5.1]
  def change
    remove_column :walks, :walker_id, :integer
  end
end
