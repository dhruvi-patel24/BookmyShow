class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def edit
  end

  def show
    @location = Location.find(params[:format])
  end

  def update
  end

  private
  def location_params
    params.require(:location).permit(:name, :address, :capacity, :city_id)
  end
end
