class AddInfoToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :weight, :integer
    add_column :dogs, :distance, :integer
    
  end
end
