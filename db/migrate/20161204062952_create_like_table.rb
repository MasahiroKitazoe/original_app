class CreateLikeTable < ActiveRecord::Migration
  def change
    create_table :like_tables do |t|
      t.integer                  :user_id
      t.integer                  :image_id
      t.timestamps
    end
  end
end
