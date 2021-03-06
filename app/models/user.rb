class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  has_many :posts, class_name: "Post", foreign_key: "user_id"
  has_one :photo, as: :imageable
  has_many :likes
  has_many :liked_posts, class_name: "Like", foreign_key: "user_id"
end
