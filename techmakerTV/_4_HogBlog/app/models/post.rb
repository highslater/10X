# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  body             :text
#  description      :text
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  author_id        :integer
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#

## app/models/post.rb

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :most_recent, -> {order(id: :desc)}
  scope :published, -> {where(published: true)}

  belongs_to :author

  def should_generate_friendly_id?
    title_changed?
  end

  def display_day_published
    "Published #{created_at.strftime('%-b %-d %Y')}"
  end
end
