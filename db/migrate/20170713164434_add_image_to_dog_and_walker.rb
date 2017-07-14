class AddImageToDogAndWalker < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :walkers, :im
    remove_attachment :dogs, :im
  end
end
