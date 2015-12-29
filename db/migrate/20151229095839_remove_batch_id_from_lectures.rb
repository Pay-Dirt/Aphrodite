class RemoveBatchIdFromLectures < ActiveRecord::Migration
  def change
    remove_column :lectures, :batch_id, :integer
  end
end
