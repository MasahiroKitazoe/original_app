class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer               :user_id
      t.integer               :subject_id
      t.integer               :image_id
      t.integer               :rate
      t.text                  :comment
      t.timestamps
    end
  end
end
