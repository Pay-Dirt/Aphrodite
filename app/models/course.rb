class Course < ActiveRecord::Base
  validates :course_name,:school_id,:grade_id, presence:true
  has_many :subject, through: :subject_course_map
  has_many :subject_course_map
  belongs_to :school
  belongs_to :grade
end
