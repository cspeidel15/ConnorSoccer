# frozen_string_literal: true

class RemoveBrandFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :brand, :string
  end
end
