class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :exam_name
      t.string :description
      t.integer :marks
      t.datetime :exam_date
      t.references :batch, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
