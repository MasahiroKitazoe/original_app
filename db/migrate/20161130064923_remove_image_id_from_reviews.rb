class RemoveImageIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :image_id, :integer
  end
end
