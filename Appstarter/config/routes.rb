Rails.application.routes.draw do
  

  get 'pledges/new'

  get 'pledges/create'

  get 'pledges/destroy'

  resources :projects
  resources :users
  resources :rewards
  root 'users#index'

end
