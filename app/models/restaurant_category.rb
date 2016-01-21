class RestaurantCategory < ActiveRecord::Base
  has_many :dishes, through: :restaurant_category_dishes
  has_many :restaurant_category_dishes
  belongs_to :restaurant
end
