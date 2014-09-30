class Article < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  default_scope -> { order('created_at DESC') }
  # has_one :category - may need to add if can't get views sorted by category working
  validates :title, presence: true, length: {maximum: 140}
  validates :category, presence: true
  validates :text, presence: true
end
