class FixUserIdColumnOnArticles < ActiveRecord::Migration
  def change
  	remove_column :articles, :user_id_id
  	add_column :articles, :user_id, :integer, index: true
  end
end
