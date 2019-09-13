class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 4, maximum: 50 }
    validates :email, presence: true, length: { minimum: 8, maximum: 250 }
end
