class Post < ApplicationRecord
  has_many :comments
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  has_many :photos, as: :imageable
  has_many :likes
  has_many :users_like, class_name: "Like", foreign_key: "post_id"
end
