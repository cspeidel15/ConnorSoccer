class AddBrandToInventory < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :brand, :string
  end
end
