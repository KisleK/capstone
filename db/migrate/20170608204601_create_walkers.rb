class CreateWalkers < ActiveRecord::Migration[5.1]
  def change
    create_table :walkers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :number
      t.string :password
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
