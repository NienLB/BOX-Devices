class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.text :id_code
      t.string :name
      t.decimal :price
      t.string :vendor
      t.boolean :status
      t.text :location
      t.date :date

      t.timestamps
    end
  end
end
