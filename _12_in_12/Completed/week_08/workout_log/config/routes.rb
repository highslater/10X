Rails.application.routes.draw do
  root to: 'workouts#index'
  resources :workouts do
    resources :exercises
  end

end
