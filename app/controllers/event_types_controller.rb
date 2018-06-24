class EventTypesController < ApplicationController
	
	def index
		@event_types = EventType.all.order("created_at asc")
	end

end
