class AddLatitudeToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :latitude, :decimal, precision: 11, scale: 8
    add_column :maps, :longitude, :decimal, precision: 11, scale: 8
  end
end
