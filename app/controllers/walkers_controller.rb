class WalkersController < ApplicationController

  def index
    
  end

  def new
  end

  def create
   walker = Walker.create(first_name: params[:first_name],
                         last_name: params[:last_name],
                         address: params[:address],
                         phone_number: params[:phone_number],
                         email: params[:email],
                         password: params[:password],
                         password_confirmation: params[:password_confirmation]
                        )
    if walker.save
      session[:user_id]
      flash[:success] = "Created"
      redirect_to '/home_walker'
    else
      flash[:warning] = "Invalid email or password"
      redirect_to '/signup_walker'
    end
  end

end
