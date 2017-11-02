class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :code
      t.string :name
      t.integer :priority, default: 0
      t.text :description

      t.timestamps
    end

    add_index :categories, :code
    # Add reference to device
    add_column :devices, :category_id, :integer
  end
end
