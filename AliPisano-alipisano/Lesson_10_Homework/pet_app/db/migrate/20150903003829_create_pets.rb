class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal_type
      t.integer :age
      t.boolean :available
      t.boolean :image

      t.timestamps null: false
    end
  end
end
