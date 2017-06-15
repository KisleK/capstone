# class WalkerSessionsController < ApplicationController
#   def new
#   end

#   def create

#     walker = Walker.find_by(email: params[:email])
#     if walker && walker.authenticate(params[:password])
#       session[:walker_id] = walker.id
#       flash[:success] =  "You Logged in"
#       redirect_to '/walkers_index'
#     else
#       flash[:warning] = "Incorrect log in information"
#       redirect_to = '/login_walker'
#     end
#   end

#   def destroy
#      session[:walker_id] = nil
#      flash[:success] = "Logged Out"
#      redirect_to '/login_walker'
#   end
# end
