class AddColorToInventory < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :color, :string
  end
end
