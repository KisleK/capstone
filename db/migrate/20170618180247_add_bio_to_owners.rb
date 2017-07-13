class AddBioToOwners < ActiveRecord::Migration[5.1]

  def change
        add_column :owners, :bio, :text

  end
end
