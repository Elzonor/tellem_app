class RemoveEventTypeNameFromEventType < ActiveRecord::Migration[5.1]
  def change
    remove_column :event_types, :event_type_name, :string
  end
end
