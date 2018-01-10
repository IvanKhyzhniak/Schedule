class AddKindToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :kind, :text
  end
end
