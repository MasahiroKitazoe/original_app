class CreateExposures < ActiveRecord::Migration
  def change
    create_table :exposures do |t|
      t.integer             :num
      t.timestamps
    end
  end
end
