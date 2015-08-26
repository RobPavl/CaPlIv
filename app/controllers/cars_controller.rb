class CarsController < ApplicationController
  
  def index
    @cars = Car.all
    render json: @cars.to_json
  end

  def create
    @car = Car.create(car_params) 
    render json: @car.to_json
  end

  def update
    @car = Car.find(params[:id])
    @car.update_attributes(car_params)
    render json: @car.to_json
  end

  def destroy
    @car = Car.find(params[:id])
    render json: @car.delete
  end

  private

  def car_params
    params.require(:car).permit(:number, :model, :year, :type)
  end

end
