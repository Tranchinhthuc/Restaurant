class User < ActiveRecord::Base
  has_one :admin
  has_one :restaurant_owner
  has_one :guest
end
