class AddSubjectIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :subject_id, :integer
  end
end
