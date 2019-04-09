class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :quantity
      t.references :product, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
