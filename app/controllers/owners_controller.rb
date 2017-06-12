class OwnersController < ApplicationController
  
  def home
  end

  def index
  
  end
  
  def new
  end

  def create
    owner = Owner.create(first_name: params[:first_name],
                         last_name: params[:last_name],
                         email: params[:email],
                         address: params[:address],
                         phone_number: params[:phone_number],
                         password: params[:password],
                         password_confirmation: params[:password_confirmation]
                        )
     if owner.save
      session[:user_id]
      flash[:success] = "Created"
      redirect_to '/home_owner'
    else
      flash[:warning] = "Invalid email or password"
      redirect_to '/signup_owner'
    end
  end

end
