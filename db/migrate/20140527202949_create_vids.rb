class CreateVids < ActiveRecord::Migration
  def change
    create_table :vids do |t|
      t.string :title
      t.string :description
      t.string :youtube_url
      t.integer :user_id

      t.timestamps
    end
  end
end
