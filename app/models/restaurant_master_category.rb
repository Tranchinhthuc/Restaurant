class RestaurantMasterCategory < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :master_category
end
