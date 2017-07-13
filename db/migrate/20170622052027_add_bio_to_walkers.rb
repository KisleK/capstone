class AddBioToWalkers < ActiveRecord::Migration[5.1]
  def change
    add_column :walkers, :bio, :text
  end
end
