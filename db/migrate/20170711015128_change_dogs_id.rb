class ChangeDogsId < ActiveRecord::Migration[5.1]
  def change


      rename_column :walks, :dogs_id, :dog_id
    
   
  end
end
