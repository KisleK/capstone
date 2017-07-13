class AddWalkerIdTo < ActiveRecord::Migration[5.1]
  def change
    add_column :walkers, :walk_id, :integer
  end
end
