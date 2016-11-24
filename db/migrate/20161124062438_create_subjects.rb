class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer                 :user_id
      t.string                  :name
      t.string                  :prefecture
      t.string                  :area
      t.timestamps
    end
  end
end
