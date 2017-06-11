class WalkerSessionsController < ApplicationController
  def new
  end

  def create

    walker = Walker.find_by(email: params[:email]
    if walker && walker.authenticate(params[:password])
      sessions[:walker_id] = walker.id
      flash[:success] =  "You Logged in"
      redirect_to '/home_walker'
    else
      flash[:warning] = "Incorrect log in information"
      redirect_to = '/login_walker'
    end
  end
end
