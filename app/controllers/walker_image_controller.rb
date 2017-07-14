class WalkerImageController < ApplicationController
    def update
    @walker = Walker.find(params[:id])
    if @walker.update!( walker_params)
      redirect_to "/walkers/#{@walker.id}"
    else
      redirect_to "/walkers/#{@walker.id}"
    end
  end

  private

  def walker_params
    params.require(:walker).permit(:image)
  end

end
