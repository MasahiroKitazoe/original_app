class AddImageIdToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :image_id, :integer
  end
end
