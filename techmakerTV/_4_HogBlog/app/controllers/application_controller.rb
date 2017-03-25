class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_filter :store_action

  # \/ Redirect to a specific page on successful sign in out
  # Setting up the controller for sign in
  def store_action
    return unless request.get?
    if (request.path != "/authors/sign_in" &&
        request.path != "/authors/sign_up" &&
        request.path != "/authors/password/new" &&
        request.path != "/authors/password/edit" &&
        request.path != "/authors/confirmation" &&
        request.path != "/authors/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:author, request.fullpath)
    end
  end
  # Setting up the controller for sign in
  # def after_sign_in_path_for(resource_or_scope)
  #   authors_posts_path
  # end

  # Setting up the controller for sign out
  def after_sign_out_path_for(resource_or_scope)
    posts_path
  end
  # /\ How To: Redirect to a specific page on successful sign in out

  layout 'blogger'
end
