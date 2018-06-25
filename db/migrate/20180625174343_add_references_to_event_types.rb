class AddReferencesToEventTypes < ActiveRecord::Migration[5.1]
  def change
    add_reference :event_types, :history_event, foreign_key: true
  end
end
