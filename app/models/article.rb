class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
 
  validates :user, presence: true
 
  validates :title, presence: true, length: {maximum: 140}
  validates :categories, :presence => true
  validates :text, presence: true
end
