module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def debug_page
    if Rails.env.development?
      current_user()
      console()
    end
  end

end
