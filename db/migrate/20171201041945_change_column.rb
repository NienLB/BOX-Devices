class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :vendors, :phone , :string 
  end
end
