Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Devise
  # Some setup you must do manually if you haven't yet:
  # 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  # For example:
  # root to: "home#index"
  # /Devise

  root to: 'posts#index'

  resources :posts

end
