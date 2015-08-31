class Car < ActiveRecord::Base
	has_many :event_cars
	has_many :events
end
