class CreateStudentAttendances < ActiveRecord::Migration
  def change
    create_table :student_attendances do |t|
      t.references :student, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true
      t.string :status
      t.date :attendance_date

      t.timestamps null: false
    end
  end
end
