class AddCalendarToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :calendar, foreign_key: true
  end
end
