class User < ApplicationRecord
  validates :email, presence: true
  validates :password_digest, presence: true
  has_many :phrases

  has_secure_password
end
