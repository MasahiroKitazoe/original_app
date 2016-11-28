class Image < ActiveRecord::Base

  belongs_to :user
  belongs_to :subject
  belongs_to :review

  accepts_nested_attributes_for :subject
  accepts_nested_attributes_for :review

  mount_uploader :image_file, ImageFileUploader
  mount_uploader :image_file2, ImageFileUploader
  mount_uploader :image_file3, ImageFileUploader

end
