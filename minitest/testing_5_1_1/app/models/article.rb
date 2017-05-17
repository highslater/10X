class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true,
    length: {minimum: 200, maximum: 500}
end
