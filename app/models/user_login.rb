class UserLogin < ActiveRecord::Base
  #extra attributes
  attr_accessor :current_role,:current_permissions
  
  #for password encryption
  has_secure_password
  
  #validations
  validates :username, :contact, :school_id, presence: true
  validates :username, length:{in: 6..20}, uniqueness: true
  validates :contact, format: {with: /\d+/, message: "should only contain digits"}, length:{in: 6..12}
  validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is not valid"}, allow_blank: true
  
  #associations
  belongs_to :school
  has_many :roles, through: :role_assignments
  has_many :role_assignments
  belongs_to :user_type, polymorphic:true
  has_many :notifications
end
