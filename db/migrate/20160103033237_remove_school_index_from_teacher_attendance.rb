class RemoveSchoolIndexFromTeacherAttendance < ActiveRecord::Migration
  def change
    remove_column :teacher_attendances, :school_id, :string
  end
end
