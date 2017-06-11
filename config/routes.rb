Rails.application.routes.draw do

  #owners routes
  get '/home_owner' =>'owners#index'

  get '/signup_owner' => 'owners#new'
  post '/owners'=> 'owners#create'

  #walks routes

  #dogs routes

  #walkers routes

  get '/home_walker' => 'walkers#index'
  get '/signup_walker' => 'walkers#new'
  post '/walkers' => 'walkers#create'


  #owner sessions

  get '/login_owner' => 'sessions#new'
  post '/login_owner' => 'sessions#create'

  delete '/logout_owner' => 'sessions#destroy'

  #walker sessions

  get '/login_walker' => 'sessions#new'
  post '/login_walker' => 'sessions#create'

  delete '/logout_walker' => 'sessions#destroy'

end
