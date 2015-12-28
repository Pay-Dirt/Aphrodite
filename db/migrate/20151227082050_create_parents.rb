class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.references :student, index: true, foreign_key: true
      t.string :parent_name
      t.integer :contact_phone
      t.string :contact_email
      t.integer :contact_alt_phone

      t.timestamps null: false
    end
  end
end
