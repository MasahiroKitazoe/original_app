class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  has_many :images

  accepts_nested_attributes_for :subject
  accepts_nested_attributes_for :images
end
