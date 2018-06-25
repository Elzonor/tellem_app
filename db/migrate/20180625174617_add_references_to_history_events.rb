class AddReferencesToHistoryEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :history_events, :event_type, foreign_key: true
  end
end
