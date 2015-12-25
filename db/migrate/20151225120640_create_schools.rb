class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.integer :contact, limit: 12
      t.string :address
      t.string :city, null: false
      t.string :state
      t.string :branch

      t.timestamps null: false
    end
  end
end
