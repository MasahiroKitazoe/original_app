class AddImageIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :image_id, :integer
  end
end
