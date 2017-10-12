class CreateTypeDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :type_devices do |t|
      t.references :devices, foreign_key: true

      t.timestamps
    end
  end
end
