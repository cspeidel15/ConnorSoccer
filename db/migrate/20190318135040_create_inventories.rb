class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :quantity
      t.integer :bin
      t.decimal :cost

      t.timestamps
    end
  end
end
