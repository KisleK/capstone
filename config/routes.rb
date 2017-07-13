Rails.application.routes.draw do

  #home route--------------------

  get '/' =>'owners#home'


  #owners routes---------------------

  get '/' => 'owners#index'
  get '/owners' => 'owners#index'

  get '/owners/new' => 'owners#new'
  post '/owners'=> 'owners#create'

  get '/owners/:id' => 'owners#show'

  get '/owners/:id/edit' => 'owners#edit'
  patch '/owners/:id' => 'owners#update'

  patch '/owners/:id/image', to: 'owner_image#update', as: :update_image
  
 
  #owner login-------------------------
 
  get '/login_owner' => 'sessions#new'
  post '/login_owner' => 'sessions#create'

  get '/logout_owner' => 'sessions#destroy'

  #walkers routes----------------------

  get '/' => 'walkers#index'
  get '/walkers' => 'walkers#index'

  get '/walkers/new' => 'walkers#new'
  post '/walkers' => 'walkers#create'

  get '/walkers/:id' => 'walkers#show'

  get '/walkers/:id/edit' => 'walkers#edit'
  patch '/walkers/:id/' => 'walkers#update'

  
  
  #walker login-------------------------------
  
  get '/login_walker' => 'walker_sessions#new'
  post '/login_walker' => 'walker_sessions#create'

  get '/logout_walker' => 'walker_sessions#destroy'


  #dog routes-------------------------

  

  get '/dogs/new' => 'dogs#new'
  post '/dogs' => 'dogs#create'

  get '/dogs/:id' => 'dogs#show'

  get '/dogs/:id/edit' => 'dogs#edit'
  patch '/dogs/:id' => 'dogs#update'

  delete '/dogs/:id' => 'dogs#destroy'

 
  #walk routes----------
  get '/walks' => 'walks#index'
  get '/walks/new' => 'walks#new'
  post '/walks' => 'walks#create'

  get '/walks/:id' => 'walks#show'

  get '/walks/:id/edit' => 'walks#edit'
  patch '/walks/:id' => 'walks#update'

  delete '/walks/:id' => 'walks#destroy'

  #accepted walks
  patch '/walks_accepted/:id' => 'walks_accepted#update'


end


