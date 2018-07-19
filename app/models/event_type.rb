class EventType < ApplicationRecord
	has_many :history_events
	has_many :posts
end
