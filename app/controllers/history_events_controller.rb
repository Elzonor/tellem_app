class HistoryEventsController < ApplicationController

	def index
		@history_events = HistoryEvent.all.order("created_at desc")
	end

	def new
		@history_event = HistoryEvent.new
	end

	private
		def history_event_parmans
			params.require(:history_event).permit(:typology)
		end

end
