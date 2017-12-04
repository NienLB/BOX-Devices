class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.timestamps
    end

    #Add references vendor to device
  end
end
