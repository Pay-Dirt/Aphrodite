class CreateCourseBatchMaps < ActiveRecord::Migration
  def change
    create_table :course_batch_maps do |t|
      t.references :course, index: true, foreign_key: true
      t.references :batch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
