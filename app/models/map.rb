class Map < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode

  belongs_to :subject
end