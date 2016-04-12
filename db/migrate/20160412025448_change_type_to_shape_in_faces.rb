class ChangeTypeToShapeInFaces < ActiveRecord::Migration
  def change
    rename_column :faces, :type, :shape
  end
end
