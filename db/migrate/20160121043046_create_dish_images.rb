class CreateDishImages < ActiveRecord::Migration
  def change
    create_table :dish_images do |t|
      t.string :name
      t.integer :dish_id
      t.string :url

      t.timestamps null: false
    end
  end
end
