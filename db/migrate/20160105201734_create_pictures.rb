class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.references :has_picture, polymorphic:true, index:true
      t.timestamps null: false
    end
  end
end
