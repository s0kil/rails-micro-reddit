class User < ApplicationRecord
    validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 5, maximum: 50}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 5, maximum: 50}, format: { with: ConstantData::VALID_EMAIL_REGEX }
    validates :password, presence: true, length: {minimum: 5, maximum: 50}
end
