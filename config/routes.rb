Rails.application.routes.draw do
  root :to => 'pages#home' 
  resources :users, :only => [:new, :create, :index]
  resources :artists
  resources :genres
  resources :albums
  resources :songs

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
