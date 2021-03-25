Rails.application.routes.draw do
  
  root to: "home#index"
  get "welcome", to: "home#index"
  get "profile", to: "users#edit"
  devise_for :users
  
  resources :users, only: [:update]
  resources :categories
  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end
end
