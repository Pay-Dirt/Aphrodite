class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :user_login, index: true, foreign_key: true
      t.string :notification_type
      t.string :notification_content

      t.timestamps null: false
    end
  end
end
