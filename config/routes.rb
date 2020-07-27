Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: "auth#create"
      # post '/signup', to: "users#create"
      get '/profile', to: "users#profile"
      # post '/user', to: "users#create"
    end
    
  end
  get '/posts', to: "post#index"
  get '/locations', to: "location#create"

end
