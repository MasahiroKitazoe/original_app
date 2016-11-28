class AddTitle2ToImages < ActiveRecord::Migration
  def change
    add_column :images, :title2, :text
    add_column :images, :comment2, :text
    add_column :images, :f_value2, :decimal, precision: 3, scale: 1
    add_column :images, :exposure2, :decimal, precision: 3, scale: 1
    add_column :images, :wb2, :string
    add_column :images, :title3, :text
    add_column :images, :comment3, :text
    add_column :images, :f_value3, :decimal, precision: 3, scale: 1
    add_column :images, :exposure3, :decimal, precision: 3, scale: 1
    add_column :images, :wb3, :string
  end
end
