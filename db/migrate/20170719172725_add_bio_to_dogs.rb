class AddBioToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :bio, :text
  end
end
