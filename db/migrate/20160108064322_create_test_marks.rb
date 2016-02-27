class CreateTestMarks < ActiveRecord::Migration
  def change
    create_table :test_marks do |t|
      t.references :test, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.integer :marks

      t.timestamps null: false
    end
  end
end
