Rails.application.routes.draw do

  devise_for :users
  # Devise Gem
  # Some setup you must do manually if you haven't yet:
  #2. Ensure you have defined root_url to *something* in your config/routes.rb.
  #For example:
  #root to: "home#index"
  root to: 'movies#index'
  # /Devise Gem

  resources :movies
end
