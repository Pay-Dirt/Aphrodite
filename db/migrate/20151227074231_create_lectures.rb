class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :lecture_name
      t.references :teacher, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
