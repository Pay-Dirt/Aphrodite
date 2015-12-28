class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.references :school, index: true, foreign_key: true
      t.references :grade, index: true, foreign_key: true
      t.string :comments

      t.timestamps null: false
    end
  end
end
