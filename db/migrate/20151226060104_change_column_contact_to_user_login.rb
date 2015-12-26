class ChangeColumnContactToUserLogin < ActiveRecord::Migration
  def change
    change_column :user_logins, :contact, :integer,  limit: 12
  end
end
