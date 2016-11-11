#videoblog/config/routes.rb
Rails.application.routes.draw do
  root to: 'videos#index'
  resources :videos do
    resources :questions
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
