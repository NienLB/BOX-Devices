class InsertColumn < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :vendors, :type, :string

  end
  def self.down
  end
end
