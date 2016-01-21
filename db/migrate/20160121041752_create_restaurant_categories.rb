class CreateRestaurantCategories < ActiveRecord::Migration
  def change
    create_table :restaurant_categories do |t|
      t.string :name
      t.integer :restaurant_id
      t.text :description

      t.timestamps null: false
    end
  end
end
