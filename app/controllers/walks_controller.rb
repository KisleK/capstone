class WalksController < ApplicationController
  before_action :authenticate_owner!, except: [:index, :show, :update]
  def index
  
    @walks = current_walker.walks.where(status: "walk requested")
  end

  def new

  end

  def create
    @walk = Walk.new(
                      name: params[:name],
                      breed: params[:breed],
                      gender: params[:gender],
                      age: params[:age],
                      first_name: params[:first_name],
                      last_name: params[:last_name],
                      status: "walk requested",
                      owner_id: current_owner.id, 
                      dog_id: params[:dog_id]
                      )
    @walk.save
    
     
      flash[:success] = "Walk Requested"
      redirect_to "/owners/#{current_owner.id}"
 
  end


def show
  @walks = Walk.find(params[:id])
end


  def edit
    @walk = Walk.find(params[:id])
  end

  def update
   if current_owner
    @walk = Walk.find(params[:id])
    @walk.assign_attributes(
                          name: params[:name],
                          breed: params[:breed],
                          gender: params[:gender],
                          age: params[:age],
                          first_name: params[:first_name],
                          last_name: params[:last_name]
                          
                            )
    @walk.save
    flash[:success] = "Walk Updated"
    redirect_to "/owners/#{current_owner.id}"

   else current_walker
    @walk = Walk.find(params[:id])
    @walk.assign_attributes(
                            walker_id: current_walker.id,
                            status: "walk accepted"
                            )
    @walk.save
    


    redirect_to "/walkers/#{current_walker.id}"
   end




  end

  

  def destroy
    @walk = Walk.find_by(id: params[:id])
    @walk.destroy

    flash[:success] = "Your walk was removed."
    redirect_to "/owners/#{current_owner.id}"
    
  end

  
end
