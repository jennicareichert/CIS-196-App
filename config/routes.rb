App::Application.routes.draw do
  devise_for :users
 resources :users
 resources :groupings, only: [:create, :destroy]
 resources :groups
 resources :posts
 resources :comments
 
get "dashboard", to: "users#dash"

 root 'home#index'

end
