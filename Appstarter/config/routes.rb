Rails.application.routes.draw do
  resources :projects do
      collection do
        match 'search' => 'projects#search', via: [:get, :post], as: :search
      end
    end
  resources :projects
  resources :users
  resources :rewards
  resources :categories
  resources :pledges, only: [:new, :create, :destroy]
 resources :sessions, only: [:new, :create, :destroy]
 resources :comments
 get "/login", to: "sessions#new"
 delete "/logout", to: "sessions#destroy"
 get 'tags/:tag', to: 'projects#index', as: :tag
 
 root 'static_pages#home'
end
