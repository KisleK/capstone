class WalkersController < ApplicationController
    before_action :authenticate_walker!, except: [:new, :index, :create, :show]

  def index
    @walkers = Walker.all
  end

  def show
    @walker = Walker.find_by(id: params[:id])
  end

  def new
    @walker = Walker.new
  end

  def create
   @walker = Walker.new(first_name: params[:first_name],
                       last_name: params[:last_name],
                       email: params[:email],
                       address: params[:address],
                       city: params[:city],
                       state: params[:state],
                       zip_code: params[:zip_code],
                       phone_number: params[:phone_number],
                       bio: params[:bio],
                       password: params[:password],
                       password_confirmation: params[:password_confirmation]
                        )
    if @walker.save
      session[:walker_id] = @walker.id
      flash[:success] = "Created"
      redirect_to "/walkers/#{@walker.id}"
    else
       @walker.errors.full_messages
      render 'new.html.erb'
    end
  end


  def edit
 
    @walker = Walker.find(params[:id])
    
  end

  def update
    @walker = Walker.find(params[:id])
    @walker.assign_attributes(
                             first_name: params[:first_name],
                             last_name: params[:last_name],
                             email: params[:email],
                             address: params[:address],
                             city: params[:city],
                             state: params[:state],
                             zip_code: params[:zip_code],
                             phone_number: params[:phone_number],
                             bio: params[:bio]
                            )
    @walker.save
    flash[:success] = "Profile updated"
    redirect_to '/walkers'
  end

  def destroy
  end


end
