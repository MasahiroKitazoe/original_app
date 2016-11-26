class AddNumToExposures < ActiveRecord::Migration
  def change
    add_column :exposures, :num, :decimal, precision: 5, scale: 1
  end
end
