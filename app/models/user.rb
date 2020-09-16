class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true, length: { in: 5..15 }
  validates :password, length: { minimum: 6 }
end
