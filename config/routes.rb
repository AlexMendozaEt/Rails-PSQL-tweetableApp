Rails.application.routes.draw do
  devise_for :users
  resources :tweets
  resources :users, except: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tweets#index"
end
