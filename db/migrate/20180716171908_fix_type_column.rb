class FixTypeColumn < ActiveRecord::Migration[5.1]
  def change
	  rename_column :event_types, :type, :typology
  end
end
