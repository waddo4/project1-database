Rails.application.routes.draw do

  root :to => 'pages#home' 
  resources :users, :only => [:new, :create, :index]
  resources :favourite_artists
  resources :favourite_albums
  resources :favourite_songs
  resources :artists
  resources :genres
  resources :albums
  resources :songs

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/premium' => 'pages#premium'
  get '/favourites' => 'pages#favourites'

end
