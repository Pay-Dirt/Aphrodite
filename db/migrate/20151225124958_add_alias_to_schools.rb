class AddAliasToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :alias, :string
  end
end
