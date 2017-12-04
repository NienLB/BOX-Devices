class RemoveVendorFromDevices < ActiveRecord::Migration[5.0]
  def change
    remove_column :devices, :vendor, :string
  end
    add_column :vendors, :code, :string
    add_index :vendors, :code
    # Add reference to device
    add_column :devices, :vendor_id, :integer
end
