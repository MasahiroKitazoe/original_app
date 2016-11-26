class Image < ActiveRecord::Base

  belongs_to :user
  belongs_to :subject

  accepts_nested_attributes_for :subject

  mount_uploader :image_file, ImageFileUploader

end
