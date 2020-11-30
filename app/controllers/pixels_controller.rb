class PixelsController < ApplicationController

  before_action :set_pixel, only: [ :show, :update, :destroy, :convert_pixel ]

  def convert_pixel
    @pixel.converted = true
    if @pixel.save
      render json: @pixel
    else
      render json: @pixel.errors, status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pixel
    @pixel = Pixel.find(params[:pixel_id])
  end
end
