class ChangeEventNameToTitleInEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :event_name, :title
  end
end
