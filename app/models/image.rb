class Image < ActiveRecord::Base

  belongs_to :user
  belongs_to :subject
  belongs_to :review
  has_many :likes, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  accepts_nested_attributes_for :subject
  accepts_nested_attributes_for :review

  mount_uploader :image_file, ImageFileUploader

end
