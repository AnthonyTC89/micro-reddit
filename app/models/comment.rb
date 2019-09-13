class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    validates :comment, presence: true, length: {maximum: 255}
    validates :post_id, presence: true
    validates :user_id, presence: true
end
