class RemoveSchoolIndexFromStudentAttendace < ActiveRecord::Migration
  def change
    remove_column :student_attendances, :school_id, :string
  end
end
