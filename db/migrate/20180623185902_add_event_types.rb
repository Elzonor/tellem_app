class AddEventTypes < ActiveRecord::Migration[5.1]
  def change
	  add_column :event_types, :event_type, :string
  end
end
