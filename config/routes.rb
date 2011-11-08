ProjectSesame::Application.routes.draw do
  get "categories/create"

  resources :users do 
	resources :microposts 
	resources :categories
  end
  resources :categories 

  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts
  
  root :to => 'pages#home'
  match '/contact', 	:to => 'pages#contact'
  match '/about',   	:to => 'pages#about'
  match '/blog',     	:to => 'microposts#index'
  match '/signup',   	:to => 'users#new'
  match '/signin',   	:to => 'sessions#new'
  match '/signout',   	:to => 'sessions#destroy'
  match '/newpost',   	:to => 'microposts#new'
 

  
end
