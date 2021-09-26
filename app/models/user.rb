class User < ApplicationRecord
  validates :email, presence: true
  validates :password_digest, presence: true
end