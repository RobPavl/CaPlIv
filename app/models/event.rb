class Event < ActiveRecord::Base
   has_many :event_places
   has_many :event_cars
   has_many :places, through: :event_places
   has_many :cars, through: :event_cars
end
