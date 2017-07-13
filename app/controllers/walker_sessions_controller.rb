class WalkerSessionsController < ApplicationController


 def new
    
  end 

  def create
    walker = Walker.find_by(email: params[:email])
    if walker && walker.authenticate(params[:password])
      session[:walker_id] = walker.id
      flash[:success] = "You've logged in"
      redirect_to "/walkers/#{walker.id}"
    else
      flash[:warning] = "That's not right"
      render 'new.html.erb'
    end
  end

  def destroy
    session[:walker_id] = nil
    flash[:success] = "Logged Out"
    redirect_to '/'
  end

end

