class Student < ActiveRecord::Base
  include ActiveRecord::Validations
  validates :school_id,:student_name,:rollno, presence:true
  validates :dob, dob_limit:true
  belongs_to :school
  belongs_to :batch
  belongs_to :course
  has_many :student_attendances
  has_one :picture, as: :has_picture
  has_one :user_login, as: :user_type
end
