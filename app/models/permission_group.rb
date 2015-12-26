class PermissionGroup < ActiveRecord::Base
  
  #associations
  belongs_to :role
  belongs_to :permission
end
