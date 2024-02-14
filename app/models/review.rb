class Review < ApplicationRecord
  belongs_to :restaurant

  # Mutltiple validations
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: 0..5 }

  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
end


# Restauarant related
# routes should reflect user stories
# 1. A visitor can see the list of all restaurants.
# GET "restaurants"
# 2.A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"



# Review related
# 3. A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"

# 4. A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
