class MasterCategory < ActiveRecord::Base
  has_many :restarants, through: :restaurant_master_categories
  has_many :restaurant_master_categories
end
