# config/routes.rb

# The Rails router recognizes URLs and dispatches them to a controller's action.
# It can also generate paths and URLs,
# avoiding the need to hardcode strings in your views.

Rails.application.routes.draw do

  # get 'about' => 'pages#about', as: :about
  get 'about', to: 'pages#about', as: 'about'
  # get 'contact' => 'pages#contact', as: :contact
  get 'contact', to: 'pages#contact', as: 'contact'

  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
