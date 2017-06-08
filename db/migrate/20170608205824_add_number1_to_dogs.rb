class AddNumber1ToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :number_1, :boolean, default: false
    add_column :dogs, :number_2, :boolean, default: false
  end
end
