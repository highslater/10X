class Pin < ApplicationRecord

  belongs_to :user

  # acts_as_votable Gem
  acts_as_votable
  # /acts_as_votable Gem

  # PaperClip Gem
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  # /PaperClip Gem


end
