module ApplicationHelper

  $debugInfoGlobalVariable = false

  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def cur_user
    return unless session[:user_id]
    @cur_user ||= User.find(session[:user_id])
  end

  def debug_page
    if Rails.env.development? && session[:debug_me]
      current_user()
      console()
    end
  end

  def debug_info
    if Rails.env.development? && session[:debug_info] && !session[:debug_me]
      render 'shared/debugging_information'
    end
  end

end
