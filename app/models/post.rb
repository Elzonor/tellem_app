class Post < ApplicationRecord
	has_many :history_events
	# has_many :event_types, through :history_events
end
