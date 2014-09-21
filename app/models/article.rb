class Article < ActiveRecord::Base
  belongs_to :user
  # has_one :category - may need to add if can't get views sorted by category working
  validates :title, presence: true
  validates :category, presence: true
  validates :text, presence: true
end
