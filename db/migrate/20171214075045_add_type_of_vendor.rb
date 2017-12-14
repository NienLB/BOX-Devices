class AddTypeOfVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors , :type_vendor, :string
    add_column :vendors, :description , :string
  end
end
