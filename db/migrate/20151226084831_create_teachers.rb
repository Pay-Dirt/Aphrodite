class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.string :father_name
      t.string :mother_name
      t.date :dob
      t.string :qualification
      t.string :designation
      t.integer :experience, limit:1
      t.string :field_of_interest
      t.string :gender, limit: 1
      t.references :user_login, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :teachers, :teacher_name
  end
end
