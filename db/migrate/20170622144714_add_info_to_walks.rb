class AddInfoToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :owner_name, :string
    add_column :walks, :dog_name, :string
    add_column :walks, :dog_breed, :string
    add_column :walks, :dog_gender, :string
    add_column :walks, :dog_age, :integer
  end
end
