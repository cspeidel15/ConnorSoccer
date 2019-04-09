# frozen_string_literal: true

class AddColumnsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :quantity, :integer
    add_column :products, :brand, :string
    add_column :products, :bin, :integer
    add_column :products, :color, :string
    add_column :products, :image, :string
  end
end
