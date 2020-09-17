class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
  validates :password, presence: true, length: { minimum: 5, maximum: 50 }
end
