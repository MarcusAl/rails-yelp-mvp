class AddReviewToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurant, index: true
    add_foreign_key :reviews, :restaurants
  end
end
