class Role < ActiveRecord::Base
  
  #validations
  validates :role_name, uniqueness: true
  
  #associations
  has_many :permissions, through: :permission_groups
  has_many :permission_groups
  has_many :user_logins, through: :role_assignments
  has_many :role_assignments
end
