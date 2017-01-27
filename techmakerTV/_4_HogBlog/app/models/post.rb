class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_friendly_id?
    title_changed?
  end
end
