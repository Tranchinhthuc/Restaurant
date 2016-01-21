class CreateRestaurantOwners < ActiveRecord::Migration
  def change
    create_table :restaurant_owners do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
