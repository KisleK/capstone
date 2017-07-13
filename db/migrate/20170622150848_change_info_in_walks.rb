class ChangeInfoInWalks < ActiveRecord::Migration[5.1]
  def change
    rename_column :walks, :owner_name, :first_name
    add_column :walks, :last_name, :string
    rename_column :walks, :dog_name, :name
    rename_column :walks, :dog_breed, :breed
    rename_column :walks, :dog_gender, :gender
    rename_column :walks, :dog_age, :age
  end
end
