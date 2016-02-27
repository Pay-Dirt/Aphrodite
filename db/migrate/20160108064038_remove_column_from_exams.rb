class RemoveColumnFromExams < ActiveRecord::Migration
  def change
    remove_column :exams, :marks, :integer
  end
end
