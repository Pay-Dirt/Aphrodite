class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :test_name
      t.string :description
      t.integer :marks
      t.datetime :test_date
      t.references :lecture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
