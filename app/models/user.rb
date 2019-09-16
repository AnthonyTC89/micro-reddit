class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :name, presence: true, length: { minimum: 4, maximum: 50 },
            uniqueness: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum: 8, maximum: 250 },
            format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false} 
end
