class AddWalkersIdToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :walker_id, :integer
  end
end
