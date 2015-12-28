class CreateTeacherAttendances < ActiveRecord::Migration
  def change
    create_table :teacher_attendances do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true
      t.string :status
      t.date :attendance_date

      t.timestamps null: false
    end
  end
end
