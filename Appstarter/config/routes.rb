Rails.application.routes.draw do
  

  
  resources :projects
  resources :users
  resources :rewards
  resources :pledges, only: [:new, :create, :destroy]
 resources :sessions, only: [:new, :create, :destroy]
 resources :comments, only: [:new, :create, :show, :destroy]
 get "/login", to: "sessions#new"
 delete "/logout", to: "sessions#destroy"
 
 root 'users#index'
end
