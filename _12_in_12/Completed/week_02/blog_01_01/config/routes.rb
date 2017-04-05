Rails.application.routes.draw do

  devise_for :users
  # Devise
  ## Some setup you must do manually if you haven't yet:
  ## 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  ## For example:
  ## root to: "home#index"
  root to: 'posts#index'
  # Devise

  resources :posts do
    resources :comments
  end

  get '/about', to: 'pages#about'

end
