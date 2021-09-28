class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :password_digest, presence: true
  validates :api_key, confirmation: { case_sensitive: true }, uniqueness: true

  # before_create do 
  #   self.api_key = SecureRandom.hex
  # end
end
