class Permission < ActiveRecord::Base
  
  #validations
  
  #association
  has_many :roles, through: :permission_groups
  has_many :permission_groups
end
