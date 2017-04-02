module ApplicationHelper

  def ave_stars(m)
    (m.reviews.blank? ?
     average_stars = 0 :
     average_stars = m.reviews.average(:rating).round(2))
  end

end
