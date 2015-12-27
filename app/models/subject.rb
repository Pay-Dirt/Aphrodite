class Subject < ActiveRecord::Base
  validates :subject_name,:school_id,:grade_id,presence:true
  belongs_to :school
  belongs_to :grade
  has_many :courses, through: :subject_course_map
  has_many :subject_course_map
end
