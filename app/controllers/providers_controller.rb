class ProvidersController < ApplicationController
  before_action :set_provider, only: [ :show, :update, :destroy]

  # GET /providers
  def index
    @providers = Provider.all

    render json: @providers
  end

  # GET /providers/1
  def show
    render json: @provider
  end

  # POST /providers
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      render json: @provider, status: :created, location: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      render json: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /providers/1
  def destroy
    @provider.destroy
  end

  # POST /create_pixel
  def create_pixel
    @provider = Provider.find(params[:provider_id])
    @pixel = Pixel.new
    @pixel.url = params[:url]
    @pixel.campaign = params[:campaign]
    @pixel.city = params[:city]
    @pixel.provider = @provider
    if @pixel.save
      render json: @pixel
    else
      render json: @pixel.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_params
      params.require(:provider).permit(:code, :name, :email, :address)
    end

    def pixel_params
      params.require(:pixel).permit(:url, :provider_id, :campaign, :city, :converted)
    end
end
