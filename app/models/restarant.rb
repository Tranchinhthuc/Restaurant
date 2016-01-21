class Restarant < ActiveRecord::Base
  has_many :master_categories, through: :restaurant_master_categories
  has_many :restaurant_master_categories
  has_many :restaurant_categories
end
