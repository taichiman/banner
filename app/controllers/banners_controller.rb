class BannersController < ApplicationController

	before_action :set_banner, only: [:destroy]

  def index
    @banners = Banner.all
  end

  def destroy
  	@banner.destroy
  	redirect_to banners_url, notice: "Banner was successfully destroyed."
  end

  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.require(:banner).permit(:name)
  end
end
