class WalkerImageController < ApplicationController
    def update
    @walker = Walker.find(params[:id])
    if @walker.update!( walker_params)
      redirect_to "/walks/#{@walk.id}"
    else
      redirect_to "/walks/#{@walk.id}"
    end
  end

  private

  def owner_params
    params.require(:walk).permit(:image)
  end

end
