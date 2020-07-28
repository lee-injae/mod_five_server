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
  get '/locations', to: "location#create"
  get '/posts', to: "post#index"
  post '/post', to: "post#create"
  

end
