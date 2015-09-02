class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @cars = Car.all
    @places = Place.all
  end

  def create
    @event = Event.create(event_params)
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
    @cars = Car.all
    @places = Place.all
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:begin_time, :end_time, :description, car_ids: [], place_ids: [])
  end

end
