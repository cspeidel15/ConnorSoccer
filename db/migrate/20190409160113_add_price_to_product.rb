# frozen_string_literal: true

class AddPriceToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :decimal
  end
end
