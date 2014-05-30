class AddSchoolAndUserType < ActiveRecord::Migration
  def change
    add_column :users, :school, :string
    add_column :users, :user_type, :string, default: "Student"
    add_index  :users, :user_type
  end
end