class CreateRestaurantMasterCategories < ActiveRecord::Migration
  def change
    create_table :restaurant_master_categories do |t|
      t.integer :restarant_id
      t.integer :master_category_id

      t.timestamps null: false
    end
  end
end
