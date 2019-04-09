class AddReferenceToCartOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_orders, :user, foreign_key: true
  end
end
