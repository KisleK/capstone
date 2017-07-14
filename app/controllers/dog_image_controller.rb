class DogImageController < ApplicationController
  def update
    @dog = Dog.find(params[:id])
    if @dog.update!( dog_params)
      redirect_to "/dogs/#{@dog.id}"
    else
      redirect_to "/dogs/#{@dog.id}"
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:image)
  end

end
