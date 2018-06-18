class CreateHistoryEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :history_events do |t|
		 t.datetime :event_date

		 t.timestamps
    end
  end
end
