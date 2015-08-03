Rails.application.routes.draw do
  

  resources :projects
  resources :users
  resources :rewards
  root 'users#index'

end
