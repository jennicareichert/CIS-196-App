App::Application.routes.draw do
 resources :users
 resources :groups
 resources :posts
 resources :comments
 
 root 'home#index'

end
