class AddIndexToReview < ActiveRecord::Migration
  def change
    add_index :reviews, [:user_id, :subject_id], :unique=>true
  end
end
