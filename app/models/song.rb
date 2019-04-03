class Song < ApplicationRecord
	has_many :user_favorites
	has_many :song_genres
	has_many :lyrics
  has_many :comments
	belongs_to :artist
  delegate :name, to: :artist, prefix: true
  scope :high_views, ->{all.order(views: :desc).limit(3)}
end
