class ChangeNameToEventNameInEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :name, :event_name
  end
end
