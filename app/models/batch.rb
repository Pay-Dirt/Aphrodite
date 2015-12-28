class Batch < ActiveRecord::Base
  alias_attribute :class_teacher,:teacher_id
  validates :grade_id,:school_id,:section, presence:true
  belongs_to :grade
  belongs_to :school
  belongs_to :teacher
  has_many :course_batch_maps
  has_many :courses, through: :course_batch_maps
  has_many :lecture_batch_maps
  has_many :lectures, through: :lecture_batch_maps
  has_many :students
end
