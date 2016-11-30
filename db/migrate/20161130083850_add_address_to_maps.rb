class AddAddressToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :address, :string
    add_column :maps, :latitude, :float
    add_column :maps, :longitude, :float
  end
end
