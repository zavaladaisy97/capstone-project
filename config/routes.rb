Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #users
  post "/users" => "users#create"

  # sessions
  post "/sessions" => "sessions#create"



end
