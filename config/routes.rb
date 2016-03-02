Rails.application.routes.draw do
  resources :posts
  resources :categories

  root 'home#index'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/home' => 'home#home'
  get '/category/add' => 'categories#new'
  get '/category/:id' => 'categories#index'
  post '/category' => 'categories#create'


end
