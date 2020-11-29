class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A\S+@\S+\z/
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?\d)\S+\z/
  validates :name, presence: true, length: {maximum:15}
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: {minimum:8, maximum:32}, format: { with: VALID_PASSWORD_REGEX }

  has_secure_password
end
