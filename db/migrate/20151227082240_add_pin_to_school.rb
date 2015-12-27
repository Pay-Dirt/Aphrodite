class AddPinToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :pin_code, :integer
  end
end
