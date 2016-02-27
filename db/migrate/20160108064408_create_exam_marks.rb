class CreateExamMarks < ActiveRecord::Migration
  def change
    create_table :exam_marks do |t|
      t.references :exam, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.integer :marks

      t.timestamps null: false
    end
  end
end
