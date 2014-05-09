App::Application.routes.draw do
  devise_for :users
 resources :users, only: [:show, :index]
 resources :groupings, only: [:create, :destroy, :update]
 resources :groups
 resources :posts
 resources :comments
 
get "dashboard", to: "users#dash" 
get "search", to: "application#search"
get "accepted/:id", to: "groups#accepted", as: "accepted"
get "pending", to: 'groups#pending'

 root 'users#dash'

end
