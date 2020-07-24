Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: "auth#create"
      get '/profile', to: "users#profile"
    end
  end

# post 'user', to: 'user#create'

# get 'post', to: "post#index"

# get 'profile', to: "user#profile"
end