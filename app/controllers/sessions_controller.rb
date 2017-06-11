class SessionsController < ApplicationController
  #OWNER
  def new
    
  end

  def create
    owner = Owner.find_by(email: params[:email])
      if owner && owner.authenticate(params[:password])
        session[:owner_id] = owner.id
        flash[:success] = "You done logged in"
        redirect_to '/home_owner'
      else
        flash[:warning] = "That's not right"
        redirect = '/login_owner'
      end
  end

end
