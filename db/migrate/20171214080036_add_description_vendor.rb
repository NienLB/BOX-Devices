class AddDescriptionVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :description, :string
  end
end
