class CreateIntroduceImages < ActiveRecord::Migration
  def change
    create_table :introduce_images do |t|
      t.integer :restarant_id
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
