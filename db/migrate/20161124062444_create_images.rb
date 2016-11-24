class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer              :user_id
      t.integer              :subject_id
      t.text                 :image_url
      t.decimal              :f_value
      t.decimal              :exposure
      t.text                 :wb
      t.text                 :lens
      t.timestamps
    end
  end
end
