class CreateRestaurantCategoryDishes < ActiveRecord::Migration
  def change
    create_table :restaurant_category_dishes do |t|
      t.integer :restaurant_category_id
      t.integer :dish_id

      t.timestamps null: false
    end
  end
end
