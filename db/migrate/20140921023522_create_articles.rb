class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.text :text
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
