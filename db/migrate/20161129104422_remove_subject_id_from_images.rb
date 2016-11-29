class RemoveSubjectIdFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :subject_id, :integer
  end
end
