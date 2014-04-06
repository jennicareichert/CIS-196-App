App::Application.routes.draw do
  devise_for :users
 resources :users, only: [:show, :index]
 resources :groupings, only: [:create, :destroy]
 resources :groups
 resources :posts
 resources :comments
 
get "dashboard", to: "users#dash"  

 root 'users#dash'

end
