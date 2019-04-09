class CreateCartOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_order_products do |t|
      t.references :CartOrder, foreign_key: true
      t.references :Product, foreign_key: true

      t.timestamps
    end
  end
end
