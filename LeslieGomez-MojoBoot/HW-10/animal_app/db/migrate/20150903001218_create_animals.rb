class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.string :age
      t.boolean :available
      t.string :blood_type
      t.string :size

      t.timestamps null: false
    end
  end
end
