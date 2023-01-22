Rails.application.routes.draw do
  root :to => 'pages#home' 
  resources :users, :only => [:new, :create, :index]
  resources :artists
  resources :genres, :only => [:new, :edit]
  resources :albums
  resources :songs, :except => [:index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/premium' => 'pages#premium'

end
