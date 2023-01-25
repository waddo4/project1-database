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
  get '/songs/:id/favourites' => 'songs#favourites'
  post '/songs/:id/add_favourite' => 'songs#add_favourite'
  delete '/songs/:id/favourite' => 'songs#remove_favourite'
  get '/artists/:id/favourites' => 'artists#favourites'
  post '/artists/:id/add_favourite' => 'artists#add_favourite'
  delete '/artists/:id/favourite' => 'artists#remove_favourite'
  get '/albums/:id/favourites' => 'albums#favourites'
  post '/albums/:id/add_favourite' => 'albums#add_favourite'
  delete '/albums/:id/favourite' => 'albums#remove_favourite'

end
