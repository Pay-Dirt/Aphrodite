class AddPolymorphismUserLogin < ActiveRecord::Migration
  def change
    add_reference :user_logins, :user_type, polymorphic:true, index:true
  end
end
