class UserFavorite < ApplicationRecord
	belongs_to :user
	belongs_to :song,  optional: true, foreign_key: "favorite_id"
	belongs_to :album,  optional: true, foreign_key: "favorite_id"
end
