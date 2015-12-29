class Permission < ActiveRecord::Base
  
  #validations
  validates :resource_name,:type_of_crud,presence:true
  #association
  has_many :roles, through: :permission_groups
  has_many :permission_groups
end
