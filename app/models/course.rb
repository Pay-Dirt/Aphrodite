class Course < ActiveRecord::Base
  validates :course_name,:school_id,:grade_id, presence:true
  has_many :subjects, through: :subject_course_maps
  has_many :subject_course_maps
  has_many :course_batch_maps
  has_many :batches, through: :course_batch_maps
  belongs_to :school
  belongs_to :grade
end
