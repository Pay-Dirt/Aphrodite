class AddImageLocationToStudent < ActiveRecord::Migration
  def change
    add_column :students, :image_loc, :string
  end
end
