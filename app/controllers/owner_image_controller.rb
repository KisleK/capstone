class OwnerImageController < ApplicationController

  def update
    @owner = Owner.find(params[:id])
    if @owner.update!( owner_params)
      redirect_to "/owners/#{@owner.id}"
    else
      redirect_to "/owners/#{@owner.id}"
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:image)
  end

end
