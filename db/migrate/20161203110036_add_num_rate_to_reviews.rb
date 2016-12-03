class AddNumRateToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :num_rate, :integer
    add_column :reviews, :challenge_rate, :integer
    add_column :reviews, :envir_rate, :integer
    add_column :reviews, :access_rate, :integer
  end
end
