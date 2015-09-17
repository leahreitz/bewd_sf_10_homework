class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :Title
      t.text :text

      t.timestamps null: false
    end
  end
end
