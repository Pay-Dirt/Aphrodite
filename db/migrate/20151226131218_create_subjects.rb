class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :description
      t.references :school, index: true, foreign_key: true
      t.references :grade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
