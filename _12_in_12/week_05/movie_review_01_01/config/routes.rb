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
  resources :reviews
end
=begin

$ rails routes
                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
       user_registration PATCH  /users(.:format)               devise/registrations#update
                         PUT    /users(.:format)               devise/registrations#update
                         DELETE /users(.:format)               devise/registrations#destroy
                         POST   /users(.:format)               devise/registrations#create
                    root GET    /                              movies#index
                  movies GET    /movies(.:format)              movies#index
                         POST   /movies(.:format)              movies#create
               new_movie GET    /movies/new(.:format)          movies#new
              edit_movie GET    /movies/:id/edit(.:format)     movies#edit
                   movie GET    /movies/:id(.:format)          movies#show
                         PATCH  /movies/:id(.:format)          movies#update
                         PUT    /movies/:id(.:format)          movies#update
                         DELETE /movies/:id(.:format)          movies#destroy
                 reviews GET    /reviews(.:format)             reviews#index
                         POST   /reviews(.:format)             reviews#create
              new_review GET    /reviews/new(.:format)         reviews#new
             edit_review GET    /reviews/:id/edit(.:format)    reviews#edit
                  review GET    /reviews/:id(.:format)         reviews#show
                         PATCH  /reviews/:id(.:format)         reviews#update
                         PUT    /reviews/:id(.:format)         reviews#update
                         DELETE /reviews/:id(.:format)         reviews#destroy


=end
