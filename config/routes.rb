Rails.application.routes.draw do

  root :to => 'pages#home' 
  resources :users, :only => [:new, :create, :index]
  resources :favourite_artists, :only => [:index]
  resources :favourite_albums, :only => [:index]
  resources :favourite_songs, :only => [:index]
  resources :artists
  resources :genres
  resources :albums
  resources :songs

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/premium' => 'pages#premium'

end
