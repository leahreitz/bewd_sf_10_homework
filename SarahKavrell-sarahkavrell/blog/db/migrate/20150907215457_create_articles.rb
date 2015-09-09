class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :date
      t.string :author

      t.timestamps null: false
    end
  end
end
