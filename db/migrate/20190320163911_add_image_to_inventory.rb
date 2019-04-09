class AddImageToInventory < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :image, :string
  end
end
