# frozen_string_literal: true

class RemoveInventoryFkFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :products, column: :inventory_id
  end
end
