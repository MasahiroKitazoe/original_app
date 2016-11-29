class RemoveCameraFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :camera, :text
  end
end
