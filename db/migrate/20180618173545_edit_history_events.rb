class EditHistoryEvents < ActiveRecord::Migration[5.1]
  def change
	remove_column :history_events, :event_date  
  end
end