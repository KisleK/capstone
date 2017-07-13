class AddInfoToOwners < ActiveRecord::Migration[5.1]
  def change
    add_column :owners, :city, :string
    add_column :owners, :state, :string
    add_column :owners, :zip_code, :integer
  end
end
