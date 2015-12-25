class RoleAssignment < ActiveRecord::Base
  belongs_to :user_login
  belongs_to :role
end
