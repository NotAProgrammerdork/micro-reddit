class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true, length: { in: 5..15 }
  validates :password, length: { minimum: 6 }
  has_many :posts
end
