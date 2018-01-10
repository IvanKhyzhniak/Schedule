class RemoveTypeFromSubjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects, :type, :text
  end
end
