class OwnersController < ApplicationController
  before_action :authenticate_owner!, except: [:home, :new, :create]
  def home
    
  end

  def index
   @owners = Owner.all

  end

  def show     
    @owner = Owner.find_by(id: params[:id])
  
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(
                       first_name: params[:first_name],
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
     if @owner.save
      session[:owner_id] = @owner.id
      flash[:success] = "Created"
      redirect_to "/owners/#{@owner.id}"
    else
       @owners.errors.full_messages
      render 'new.html.erb'
    end
  end


  def edit
   
    @owner = Owner.find(params[:id])
  end

  def update

    @owner = Owner.find(params[:id])
    @owner.assign_attributes(
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
     @owner.save!
      flash[:success] = "Profile Updated"
      redirect_to "/owners/#{@owner.id}"
    
  end

end
