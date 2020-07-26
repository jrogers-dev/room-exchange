Rails.application.routes.draw do
  resources :posts
  resources :owners
  resources :users do
    resources :favorites
    resources :messages
  end
  
  get "/login", to: "session#new"
  post "/login", to: "session#create"

  get "/register", to: "welcome#register"
  get "/dashboard", to: "users#show"
  
  root "welcome#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
