class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :song
  delegate :full_name, to: :user, prefix: true
  delegate :picture, to: :user, prefix: true
end
