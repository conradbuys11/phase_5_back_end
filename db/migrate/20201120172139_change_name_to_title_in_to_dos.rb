class ChangeNameToTitleInToDos < ActiveRecord::Migration[6.0]
  def change
    rename_column :to_dos, :name, :title
  end
end
