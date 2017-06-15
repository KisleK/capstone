class OwnersController < ApplicationController
  
  def index
    @owners = Owner.all.order('created_at desc')
  end

  def show       #delete hashed show lines?
    #owner_id = params[:id]
    @owner = Owner.find_by(id: params[:id])
    #redirect_to '/owners'
  end

  def new
    @owner = Owner.new
  end

  def create
    owner = Owner.new(first_name: params[:first_name],
                         last_name: params[:last_name],
                         email: params[:email],
                         address: params[:address],
                         phone_number: params[:phone_number],
                         password: params[:password],
                         password_confirmation: params[:password_confirmation]
                        )
     if owner.save
      session[:owner_id] = @owner.id
      flash[:success] = "Created"
      redirect_to '/owners'
    else
      flash[:warning] = "Invalid email or password"
      render 'new.html.erb'
    end
  end


  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    ##??? may need to update(compare to overflow)
    @owner = Owner.find(params[:id])
    owenr.assign_attributes(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            address: params[:address],
                            phone_number: params[:phone_number]
                            )
    owner.save
    flash[:success] = "Profile Updated"
    redirect_to '/owners'
  end

  def destroy
  end

end
