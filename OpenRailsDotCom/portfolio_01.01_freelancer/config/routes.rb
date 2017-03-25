Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  ## Devise
  ## 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  ## For example:
  ## root to: "home#index"
  root to: 'posts#index'
  resources :posts
end
