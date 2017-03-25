Rails.application.routes.draw do
  devise_for :users
  # Devise Gem
  # Some setup you must do manually if you haven't yet:
  # 2. Ensure you have defined root_url to *something* in your config/routes.rb.
  # For example:
  # root to: "home#index"
  # /Devise Gem

  root to: 'pins#index'

  resources :pins do
    # acts_as_votable Gem
    member do
      put "like", to: 'pins#upvote'
    end
    # /acts_as_votable Gem
  end
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
                    root GET    /                              pins#index
                like_pin PUT    /pins/:id/like(.:format)       pins#upvote
                    pins GET    /pins(.:format)                pins#index
                         POST   /pins(.:format)                pins#create
                 new_pin GET    /pins/new(.:format)            pins#new
                edit_pin GET    /pins/:id/edit(.:format)       pins#edit
                     pin GET    /pins/:id(.:format)            pins#show
                         PATCH  /pins/:id(.:format)            pins#update
                         PUT    /pins/:id(.:format)            pins#update
                         DELETE /pins/:id(.:format)            pins#destroy

=end
