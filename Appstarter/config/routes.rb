Rails.application.routes.draw do
  resources :projects
  resources :users
  resources :rewards
  resources :categories
  resources :pledges, only: [:new, :create, :destroy]
 resources :sessions, only: [:new, :create, :destroy]
 resources :comments
 get "/login", to: "sessions#new"
 delete "/logout", to: "sessions#destroy"
 
 root 'users#index'
end
