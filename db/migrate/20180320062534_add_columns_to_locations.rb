class AddColumnsToLocations < ActiveRecord::Migration[5.0]
  def change
  	add_column :locations, :box, :string
  	add_column :locations, :code, :string
  	add_column :locations, :address, :string
  end
end
