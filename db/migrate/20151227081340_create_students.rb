class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :father_name
      t.string :mother_name
      t.date :dob
      t.string :gender
      t.references :school, index: true, foreign_key: true
      t.references :batch, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
