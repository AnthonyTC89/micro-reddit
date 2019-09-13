class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :name, presence: true, length: { minimum: 4, maximum: 50 }
    validates :email, presence: true, length: { minimum: 8, maximum: 250 }
end
