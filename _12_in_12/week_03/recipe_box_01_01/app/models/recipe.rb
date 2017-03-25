class Recipe < ApplicationRecord

  belongs_to :user

  has_many :ingredients
  accepts_nested_attributes_for :ingredients,
    reject_if: :all_blank,
    allow_destroy: true

  has_many :directions
  accepts_nested_attributes_for :directions,
    reject_if: :all_blank,
    allow_destroy: true

  has_attached_file :image, styles: { medium: "400x400#",
                                      small: "150x150#",
                                      thumb: "75x75#"}

  validates :title, :description, :image, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
