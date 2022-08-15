class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: { in: 6..15 }, uniqueness: true
  validates :password, presence: true, length: { in: 8..20 }
  validates :email, presence: true, uniqueness: true
end
