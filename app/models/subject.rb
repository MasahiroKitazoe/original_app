class Subject < ActiveRecord::Base
  belongs_to :user
  has_one :image
  has_many :reviews

  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :reviews

end