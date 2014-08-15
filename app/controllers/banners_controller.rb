class BannersController < ApplicationController

	before_action :set_banner, only: [:edit, :update, :destroy]

  def index
    @banners = Banner.asc
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new banner_params

    if @banner.save
      redirect_to banners_path , notice: "Banner was succesfully created."
    else
      render :new
    end
  end

  def edit; end

  def update
    @banner.update! banner_params

    redirect_to banners_path, notice: "Banner was successfully updated."
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
    params.require(:banner).permit([:name, :top, :right, :bottom, :left, :banner_type, :link])
  end
end
