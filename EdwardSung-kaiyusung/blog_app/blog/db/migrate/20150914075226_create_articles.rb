class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :date
      t.string :author
      t.boolean :private

      t.timestamps null: false
    end
  end
end
