class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.string :type
    end
  end
end
