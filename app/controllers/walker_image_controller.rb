class WalkerImageController < ApplicationController
    def update
    @walker = Walker.find(params[:id])
    if @walker.update!( walker_params)
      redirect_to "/walker/#{@walker.id}"
    else
      redirect_to "/walker/#{@walker.id}"
    end
  end

  private

  def owner_params
    params.require(:walker).permit(:image)
  end

end
