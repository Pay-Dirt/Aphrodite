class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_desctiption
      t.string :event_type, null:false
      t.integer :event_type_id, null:false
      t.references :user_login, index: true, foreign_key: true, null:false

      t.timestamps null: false
    end
  end
end
