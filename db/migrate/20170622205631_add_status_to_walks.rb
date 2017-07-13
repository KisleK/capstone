class AddStatusToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :status, :string
  end
end
