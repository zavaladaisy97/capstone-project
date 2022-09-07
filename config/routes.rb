Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #users
  post "/users" => "users#create"

  # sessions
  post "/sessions" => "sessions#create"

  #garments
  get "/garments" => "garments#index"
  get "/garments/:id" => "garments#show"
  post "/garments" => "garments#create"
  delete "/garments/:id" => "garments#destroy"

  #colors
  post "/colors" => "colors#create"
  delete "/colors/:id" => "colors#destroy"

  #categories
  post "/categories" => "categories#create"
  delete "/categories/:id" => "categories#destroy"

end
