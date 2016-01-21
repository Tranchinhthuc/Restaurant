class RestaurantCategoryDish < ActiveRecord::Base
  belongs_to :restaurant_category
  belongs_to :dish
end
