class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :resource_name
      t.string :type_of_crud

      t.timestamps null: false
    end
  end
end
