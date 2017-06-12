Rails.application.routes.draw do

  # #owners routes
  get '/' => 'owners#home'
  get '/home' => 'owners#home'


  get '/home_owner' =>'owners#index'

  get '/signup_owner' => 'owners#new'
  post '/owners'=> 'owners#create'

  #owner sessions

  get '/login_owner' => 'sessions#new'
  post '/login_owner' => 'sessions#create'

  delete '/logout_owner' => 'sessions#destroy'

 

  #walkers routes

  get '/home_walker' => 'walkers#index'
  get '/signup_walker' => 'walkers#new'
  post '/walkers' => 'walkers#create'

  #walker sessions

  get '/login_walker' => 'walker_sessions#new'
  post '/login_walker' => 'walker_sessions#create'

  delete '/logout_walker' => 'walker_sessions#destroy'



end


