class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :medication
      t.boolean :number_1
      t.boolean :number_2
      t.integer :owner_id
      t.integer :walker_id
 
      t.timestamps
    end
  end
end
