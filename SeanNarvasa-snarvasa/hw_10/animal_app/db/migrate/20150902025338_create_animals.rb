class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :animal_type
      t.boolean :neuter_status
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
