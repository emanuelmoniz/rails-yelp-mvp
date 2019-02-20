class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :category
      t.integer :stars
      t.string :img_link

      t.timestamps
    end
  end
end
