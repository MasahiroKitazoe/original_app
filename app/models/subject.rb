class Subject < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :reviews

  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :reviews

end