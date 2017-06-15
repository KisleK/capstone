class WalkersController < ApplicationController

  def index
    @walker = Walker.all.order('created_at desc')
  end


  def show      #delete hashed show lines?
    # walker_id = params[:id]
    @walker = Walker.find_by(id: owner_id)
    # redirect_to '/walkers'


  def new
    @walker = Walker.new
  end

  def create
   walker = Walker.new(first_name: params[:first_name],
                         last_name: params[:last_name],
                         address: params[:address],
                         phone_number: params[:phone_number],
                         email: params[:email],
                         password: params[:password],
                         password_confirmation: params[:password_confirmation]
                        )
    if walker.save
      session[:walker_id] @walker.id
      flash[:success] = "Created"
      redirect_to '/walkers'
    else
      flash[:warning] = "Invalid email or password"
      # redirect_to '/signup_walker'. (alt syntax)
      render 'new.html.erb'
    end
  end


  def edit
    @walker = Walker.find(params[:id])
    
  end

  def update
    @walker = Walker.find(params[:id])
    walker.assign_attributes(

                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            address: params[:address],
                            phone_number: params[:phone_number]
                            )
    walker.save
    flash[:success] = "Profile updated"
    redirect_to '/walkers'
  end

  def destroy
  end


end
