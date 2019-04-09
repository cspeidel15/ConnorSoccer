# frozen_string_literal: true

class RemoveBillingAddressFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :billingAddress, :string
  end
end
