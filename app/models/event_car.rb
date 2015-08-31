class EventCar < ActiveRecord::Base
  belongs_to :car
  belongs_to :event
end
