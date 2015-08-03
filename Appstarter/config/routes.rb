Rails.application.routes.draw do
  



  resources :projects
  resources :users
  resources :rewards
  resources :pledges, only: [:new, :create, :destroy]
  root 'users#index'

end
