class AddAddressContactToVendors < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :address, :string
    add_column :vendors, :contact, :integer
  end
end
