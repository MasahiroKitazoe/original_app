class AddIndexToSubject < ActiveRecord::Migration
  def change
    add_index :subjects, :name, :unique=>true
  end
end
