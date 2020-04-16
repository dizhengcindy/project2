Rails.application.routes.draw do
  resources :relationships
  resources :comments
  resources :picture_tags
  resources :tags
  resources :pictures
  resources :users
  root to: "pictures#index"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "auth#new", as: "login"
  post '/login', to: "auth#create" 
  delete '/logout', to: "auth#destroy", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
