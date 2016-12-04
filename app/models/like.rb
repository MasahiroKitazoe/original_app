class Like < ActiveRecord::Base
  belongs_to :image, counter_cache: :likes_count
  belongs_to :user
end
