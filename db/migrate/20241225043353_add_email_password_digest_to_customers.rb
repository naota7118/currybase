class AddEmailPasswordDigestToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :email, :string, null: false
    add_column :customers, :password_digest, :string, null: false 
  end
end
