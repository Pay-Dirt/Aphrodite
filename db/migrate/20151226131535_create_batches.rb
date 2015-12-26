class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.references :grade, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true
      t.string :section
      t.string :class_alias
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
