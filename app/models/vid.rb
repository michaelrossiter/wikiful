class Vid < ActiveRecord::Base
	belongs_to :user
	validates :youtube_url, presence: true
	validates :title, presence: true
	validates :description, presence: true
end
