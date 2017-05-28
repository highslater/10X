module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def debug_page(boolean)
    if Rails.env.development? && boolean
      current_user()
      console()
    end
  end


end
