# frozen_string_literal: true

class ChangeColumnsInCart < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :carts, column: :customer_id
    add_reference :carts, :user, foreign_key: true
  end
end
