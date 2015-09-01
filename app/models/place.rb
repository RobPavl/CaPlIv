class Place < ActiveRecord::Base
	has_many :event_places
end
