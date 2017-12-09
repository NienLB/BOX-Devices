class FixColumn < ActiveRecord::Migration[5.0]
  def self.up
    #rename_column :vendors, :strings  , :phone 
    add_column :vendors, :phone, :string
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end  
end