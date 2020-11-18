class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.boolean :is_completed
      t.string :urgency
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
