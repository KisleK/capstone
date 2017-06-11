class AddPhoneNumberToWalkers < ActiveRecord::Migration[5.1]
  def change
    add_column :walkers, :phone_number, :string
  end
end
