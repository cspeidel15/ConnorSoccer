class AddColumnsToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :username, :string
    add_column :customers, :password, :string
    add_column :customers, :email, :string
    add_column :customers, :creditCard, :string
  end
end
