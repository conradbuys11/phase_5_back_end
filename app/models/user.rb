class User < ApplicationRecord
  belongs_to :calendar
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users
  has_many :posts

  validates :username, presence: true, uniqueness: true
  # validates :password, presence: true
  # has_secure_password
end
