# config/routes.rb

# The Rails router recognizes URLs and dispatches them to a controller's action.
# It can also generate paths and URLs,
# avoiding the need to hardcode strings in your views.

Rails.application.routes.draw do


  root to: 'blog/posts#index'

  namespace :blogger do
    resources :posts
  end

  scope module: 'blog' do
    get 'about', to: 'pages#about', as: 'about'
    get 'contact', to: 'pages#contact', as: 'contact'
    get 'posts', to: 'posts#index', as: 'posts'
    get 'posts/:id', to: 'posts#show', as: 'post'
  end
end
