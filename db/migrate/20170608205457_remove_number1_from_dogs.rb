class RemoveNumber1FromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :number_1, :boolean
    remove_column :dogs, :number_2, :boolean
  end
end
