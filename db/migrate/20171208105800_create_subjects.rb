class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.text :name
      t.text :type
      t.references :group, foreign_key: true
      t.date :date
      t.integer :number
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
