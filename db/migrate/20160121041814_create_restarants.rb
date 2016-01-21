class CreateRestarants < ActiveRecord::Migration
  def change
    create_table :restarants do |t|
      t.string :name
      t.integer :restaurant_owner_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description

      t.timestamps null: false
    end
  end
end
