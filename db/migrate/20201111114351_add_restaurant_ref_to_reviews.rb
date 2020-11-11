class AddRestaurantRefToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurant, index: true, foreign_key: true
  end
end
