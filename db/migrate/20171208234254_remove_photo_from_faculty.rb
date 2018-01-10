class RemovePhotoFromFaculty < ActiveRecord::Migration[5.1]
  def change
    remove_column :faculties, :photo, :string
  end
end
