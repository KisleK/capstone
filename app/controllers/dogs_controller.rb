class DogsController < ApplicationController
  before_action :authenticate_owner!, except: [:index, :show]
  def index

  end

  def new
  
  end

  def create
    @dog = Dog.new(
                    name: params[:name],
                    breed: params[:breed],
                    gender: params[:gender],
                    age: params[:age],
                    owner_id: current_owner.id, 
                    weight: params[:weight]
                    )
    @dog.save
    if flash[:success] = "Puppy Added"
      redirect_to "/owners/#{current_owner.id}"
    else 
       @errors = dog.errors.full_messages
      render 'new.html.erb'
    end
  end
  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.assign_attributes(
                          name: params[:name],
                          breed: params[:breed],
                          gender: params[:gender],
                          age: params[:age], 
                          weight: params[:weight],
                          distance: params[:distance], bio: params[:bio]
                            )
    @dog.save!
    if flash[:success] = "Puppy Updated"
      redirect_to "/owners/#{current_owner.id}"
    else 
       @errors = dog.errors.full_messages
      render 'edit.html.erb'
    end
   
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy

    flash[:success] = "Your puppy was removed."
    redirect_to "/owners/#{current_owner.id}"
    
  end
  
end
