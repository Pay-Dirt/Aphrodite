class RoleAssignment < ActiveRecord::Base
  
  #associations
  belongs_to :user_login
  belongs_to :role
end
