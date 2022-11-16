Rails.application.routes.draw do
  get 'index' => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/home", to: "home#index"
  root "home#index"
  # root "articles#index"
end
