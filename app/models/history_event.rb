class HistoryEvent < ApplicationRecord
	belongs_to :post
	has_one :event_type
end
