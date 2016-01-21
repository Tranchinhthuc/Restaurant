class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.integer :restarant_id

      t.timestamps null: false
    end
  end
end
