Rails.application.routes.draw do

  devise_for :users
  # Devise Gem
  # Some setup you must do manually if you haven't yet:
  # 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  # For example:
  # root to: "home#index"
  #/ Devise Gem

  root to: 'recipes#index'

  resources :recipes

end
=begin

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
                    root GET    /                              recipes#index
                 recipes GET    /recipes(.:format)             recipes#index
                         POST   /recipes(.:format)             recipes#create
              new_recipe GET    /recipes/new(.:format)         recipes#new
             edit_recipe GET    /recipes/:id/edit(.:format)    recipes#edit
                  recipe GET    /recipes/:id(.:format)         recipes#show
                         PATCH  /recipes/:id(.:format)         recipes#update
                         PUT    /recipes/:id(.:format)         recipes#update
                         DELETE /recipes/:id(.:format)         recipes#destroy


=end
