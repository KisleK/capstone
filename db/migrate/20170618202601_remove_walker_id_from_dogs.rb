class RemoveWalkerIdFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :walker_id, :integer
  end
end
