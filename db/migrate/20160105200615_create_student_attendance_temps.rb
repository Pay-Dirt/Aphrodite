class CreateStudentAttendanceTemps < ActiveRecord::Migration
  def change
    create_table :student_attendance_temps do |t|
      t.references :student, index: true, foreign_key: true
      t.string :status
      t.date :attendance_date
      t.timestamps null: false
    end
  end
end
