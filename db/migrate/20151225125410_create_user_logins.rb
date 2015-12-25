class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :username, null: false
      t.string :email
      t.integer :contact
      t.string :password_digest
      t.string :last_ip_address
      t.boolean :activation_status, default: false
      t.boolean :locked_status, default:  false
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :user_logins, :username
    add_index :user_logins, :email
  end
end
