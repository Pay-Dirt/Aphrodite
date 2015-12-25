class CreateRoleAssignments < ActiveRecord::Migration
  def change
    create_table :role_assignments do |t|
      t.references :user_login, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
