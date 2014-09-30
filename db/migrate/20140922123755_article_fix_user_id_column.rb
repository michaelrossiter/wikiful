class ArticleFixUserIdColumn < ActiveRecord::Migration
  def change
    remove_column :articles, :user_id_id
    add_column :articles, :user_id, :integer
  end

end
