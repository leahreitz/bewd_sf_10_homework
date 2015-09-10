class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :common_name
      t.string :genus
      t.string :species
      t.string :native_to
      t.boolean :north_america
      t.boolean :south_america
      t.boolean :europe
      t.boolean :africa
      t.boolean :asia
      t.boolean :australia
      t.boolean :anartica

      t.timestamps null: false
    end
  end
end
