class RemoveColumnFromTests < ActiveRecord::Migration
  def change
    remove_column :tests, :marks, :integer
  end
end
