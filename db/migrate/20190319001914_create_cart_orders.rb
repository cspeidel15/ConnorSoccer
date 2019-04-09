class CreateCartOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_orders do |t|
      t.integer :quantity
      t.integer :trackingNumber
      t.datetime :orderDate
      t.decimal :totalPrice
      t.references :Customer, foreign_key: true

      t.timestamps
    end
  end
end
