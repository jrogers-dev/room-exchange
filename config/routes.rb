Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :owners
  resources :messages
  
  resources :users do
    resources :favorites
    resources :comments
  end
  
  get "/login", to: "session#new"
  post "/login", to: "session#create"

  get "/logout", to: "session#destroy"

  get "/register", to: "welcome#register"

  get "/users/dashboard", to: "users#show"
  get "/owners/dashboard", to: "owners#show"

  #post "/favorite", to: "favorites#create"

  root "welcome#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
