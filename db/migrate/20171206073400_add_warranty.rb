class AddWarranty < ActiveRecord::Migration[5.0]
  def change
    add_column :devices, :warranty_date , :varchar
    rename_column :devices, :date,  :usage_date
  end
end
  