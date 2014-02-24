App::Application.routes.draw do
  #devise_for :users
 resources :users
 resources :groups
 resources :posts
 resources :comments
 
 root 'home#index'

end
