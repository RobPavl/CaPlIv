class PlacesController < ApplicationController
  
  def index
  	@places = Place.all
  end

  def new
  	@place = Place.new
  end
  
  def create
    @place = Place.create(place_params)
    redirect_to places_path
  end

  def edit
  	@place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
    redirect_to places_path
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:address, :city, :landmark, :latitude, :longitude)
  end


end
