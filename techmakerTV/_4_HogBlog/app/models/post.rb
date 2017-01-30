## app/models/post.rb

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :most_recent, -> {order(id: :desc)}

  def should_generate_friendly_id?
    title_changed?
  end
end
