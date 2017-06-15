class SessionsController < ApplicationController
  #OWNER
  def new
    
  end

  def create
    owner = Owner.find_by(email: params[:email])
    if owner && owner.authenticate(params[:password])
      session[:owner_id] = owner.id
      flash[:success] = "You've logged in"
      redirect_to '/owners_index'
    else
      flash[:warning] = "That's not right"
      redirect = '/login_owner'
    end
  end

  def destroy
    session[:owner_id] = nil
    flash[:success] = "Logged Out"
    redirect_to '/login_owner'
  end

end
