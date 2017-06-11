class RemovedPhoneNumberFromWalkers < ActiveRecord::Migration[5.1]
  def change
    remove_column :walkers, :phone, :string
    remove_column :walkers, :number, :string
  end
end
