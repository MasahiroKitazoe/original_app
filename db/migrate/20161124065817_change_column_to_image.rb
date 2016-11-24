class ChangeColumnToImage < ActiveRecord::Migration
  def up
    change_column :images, :f_value, :decimal, precision: 3, scale: 1
    change_column :images, :exposure, :decimal, precision: 3, scale: 1
  end

  def down
    change_column :images, :f_value, :decimal
    change_column :images, :exposure, :decimal
  end
end
