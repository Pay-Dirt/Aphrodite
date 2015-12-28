class CreateLectureBatchMaps < ActiveRecord::Migration
  def change
    create_table :lecture_batch_maps do |t|
      t.references :batch, index: true, foreign_key: true
      t.references :lecture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
