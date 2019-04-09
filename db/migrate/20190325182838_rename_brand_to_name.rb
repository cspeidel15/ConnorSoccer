# frozen_string_literal: true

class RenameBrandToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :brand, :name
  end
end
