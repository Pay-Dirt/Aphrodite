class RemoveImageColumnsStudentTable < ActiveRecord::Migration
  def change
    remove_column :students, :image_loc
  end
end
