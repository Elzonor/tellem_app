class HistoryEventsController < ApplicationController
	
	def index
		@history_events = HistoryEvent.all.order("created_at desc")
	end

end
