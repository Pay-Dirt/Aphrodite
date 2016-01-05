class AddColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :rollno, :string
  end
end
