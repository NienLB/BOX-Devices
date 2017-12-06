class FixDatatyeOfStatus < ActiveRecord::Migration[5.0]
  def change
    change_column :devices , :status, :varchar
  end
end
