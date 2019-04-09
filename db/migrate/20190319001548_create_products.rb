class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.string :description
      t.decimal :salePrice
      t.string :size
      t.references :Inventory, foreign_key: true

      t.timestamps
    end
  end
end
