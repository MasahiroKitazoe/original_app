class RemoveLatitudeFromMaps < ActiveRecord::Migration
  def change
    remove_column :maps, :latitude, :float
    remove_column :maps, :longitude, :float
  end
end
