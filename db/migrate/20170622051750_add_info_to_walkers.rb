class AddInfoToWalkers < ActiveRecord::Migration[5.1]
  def change
      add_column :walkers, :city, :string
      add_column :walkers, :state, :string
      add_column :walkers, :zip_code, :integer
  end
end
