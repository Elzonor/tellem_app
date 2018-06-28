class AddEventTypeNameToEventType < ActiveRecord::Migration[5.1]
  def change
    add_column :event_types, :event_type_name, :string
  end
end
