class EventPlace < ActiveRecord::Base
  belongs_to :place
  belongs_to :event
end
