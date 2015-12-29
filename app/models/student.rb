class Student < ActiveRecord::Base
  include ActiveRecord::Validations
  validates :school_id,:student_name, presence:true
  validates :dob, dob_limit:true
  belongs_to :school
  belongs_to :batch
  belongs_to :course
end
