class RemoveImageFile2FromImages < ActiveRecord::Migration
  def change
    remove_column :images, :image_file2, :file
    remove_column :images, :image_file3, :file
    remove_column :images, :title2, :text
    remove_column :images, :title3, :text
    remove_column :images, :comment2, :text
    remove_column :images, :comment3, :text
    remove_column :images, :f_value2, :integer
    remove_column :images, :f_value3, :integer
    remove_column :images, :exposure2, :integer
    remove_column :images, :exposure3, :integer
    remove_column :images, :wb2, :integer
    remove_column :images, :wb3, :integer
  end
end
