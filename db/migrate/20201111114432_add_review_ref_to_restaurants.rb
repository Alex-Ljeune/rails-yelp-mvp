class AddReviewRefToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_reference :restaurants, :review, index: true, foreign_key: true
  end
end
