Rails.application.routes.draw do




  #owners routes
  get '/' => 'owners#index'
  get '/owners' => 'owners#index'

  get '/owners/new' => 'owners#new'
  post '/owners'=> 'owners#create'

  get '/owners/:id' => 'owners#show'

  get '/owners/:id/edit' => 'owners#edit'
  patch '/owners/:id' => 'owners#update'

  delete '/owners/:id' => 'owners#destroy'
 
  #owner login-------------------------
 
  get '/login_owner' => 'sessions#new'
  post '/login_owner' => 'sessions#create'

  get '/logout_owner' => 'sessions#destroy'

  #walkers routes

  get '/' => 'walkers#index'
  get '/walkers' => 'walkers#index'

  get '/walker/new' => 'walkers#new'
  post '/walkers' => 'walkers#create'

  get '/walkers/:id' => 'walkers#show'

  get '/walkers/:id/edit' => 'walkers#edit'
  patch '/walkers/:id/' => 'walkers#update'

  delete '/walkers/:id' => 'walkers#destroy'
  
  #walker login-------------------------------
  
  get '/login_walker' => 'walker_sessions#new'
  post '/login_walker' => 'walker_sessions#create'

  get '/logout_walker' => 'walker_sessions#destroy'







  # #dog routes

  # get '/dogs/new' => 'dogs#new'
  # post '/dogs/:id' => 'dogs#create'







end


