Rails.application.routes.draw do

  resources :comments
  devise_for :users
  # Devise
  # Some setup you must do manually if you haven't yet:
  # 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  # For example:
  # root to: "home#index"
  # /Devise

  root to: "links#index"

  resources :links do
    # Acts as Votable
    member do
      put    "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    # /Acts as Votable
    resources :comments
  end

end
