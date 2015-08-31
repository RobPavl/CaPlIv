class Event < ActiveRecord::Base
   has_many :places, trough: :event_places
   has_many :cars, trough: :event_cars
end
