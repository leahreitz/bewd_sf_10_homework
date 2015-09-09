class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.integer :age
      t.boolean :availible

      t.timestamps null: false
    end
  end
end
