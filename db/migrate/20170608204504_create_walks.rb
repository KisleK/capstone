class CreateWalks < ActiveRecord::Migration[5.1]
  def change
    create_table :walks do |t|
      t.integer :owner_id
      t.integer :walker_id

      t.timestamps
    end
  end
end
