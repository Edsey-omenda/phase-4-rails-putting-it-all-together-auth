Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:create, :show]

  # resources :sessions, only: [:create, :destroy]

  resources :recipes, only: [:index, :create]


  get"/me", to: "users#show"
  post "/signup", to: "users#create"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # get "/recipes", to: "recipes#index"
  # post "/reipes", to: "recipes#create"
end

