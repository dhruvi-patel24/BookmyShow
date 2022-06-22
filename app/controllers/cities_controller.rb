class CitiesController < ApplicationController
  def create
    @city = City.new(event_params)
    if @city.save
      redirect_to cities_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def edit

  end

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def show
  end

  def update
  end

  private
  def event_params
    params.require(:city).permit(:name)
  end
end
