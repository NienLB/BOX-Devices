class AddQuantityToDevices < ActiveRecord::Migration[5.0]
  def change
    add_column :devices, :quantity, :integer
  end
end
