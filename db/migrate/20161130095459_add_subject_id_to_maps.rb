class AddSubjectIdToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :subject_id, :integer
  end
end
