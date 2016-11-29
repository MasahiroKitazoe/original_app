class RemoveImageIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :image_id, :integer
  end
end
