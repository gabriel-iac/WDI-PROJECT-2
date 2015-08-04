Rails.application.routes.draw do
  

  match "/projects/add_new_comment" => "projects#add_new_comment", :as => "add_new_comment_to_projects", :via => [:project]
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
