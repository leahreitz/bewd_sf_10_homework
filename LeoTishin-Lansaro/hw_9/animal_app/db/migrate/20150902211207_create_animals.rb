class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :location
      t.integer :count
      t.string :image

      t.timestamps null: false
    end
  end
end
