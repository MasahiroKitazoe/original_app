class RemoveAddressFromMaps < ActiveRecord::Migration
  def change
    remove_column :maps, :address, :text
  end
end
