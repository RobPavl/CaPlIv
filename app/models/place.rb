class Place < ActiveRecord::Base
	has_many :event_places
	has_many :events
end
