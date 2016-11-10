# videolog/app/models/video.rb
class Video < ApplicationRecord
  has_many :questions
  validates_presence_of :title, :category, :description, :size, :length
end
