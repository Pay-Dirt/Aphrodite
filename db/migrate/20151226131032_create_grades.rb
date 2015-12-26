class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :grade_level, limit:1

      t.timestamps null: false
    end
  end
end
