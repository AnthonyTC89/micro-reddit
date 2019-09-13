class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 25 }
  validates :content, presence: true, length: { maximum: 255 }
end
