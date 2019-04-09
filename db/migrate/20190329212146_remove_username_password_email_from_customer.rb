# frozen_string_literal: true

class RemoveUsernamePasswordEmailFromCustomer < ActiveRecord::Migration[5.2]
  def change
    rename_column :customers, :username, :string
    rename_column :customers, :password, :string
    rename_column :customers, :email, :string
  end
end
