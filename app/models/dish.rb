class Dish < ActiveRecord::Base
  has_many :restaurant_categories, through: :restaurant_category_dishes
  has_many :restaurant_category_dishes
  belongs_to :restarant
  has_many :dish_images
end
