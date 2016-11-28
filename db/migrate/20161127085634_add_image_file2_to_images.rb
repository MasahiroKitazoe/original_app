class AddImageFile2ToImages < ActiveRecord::Migration
  def change
    add_column :images, :image_file2, :text
    add_column :images, :image_file3, :text
  end
end
