# videolog/app/models/video.rb
class Video < ApplicationRecord
  validates_presence_of :title, :category, :description, :size, :length
end
