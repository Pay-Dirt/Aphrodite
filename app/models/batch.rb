class Batch < ActiveRecord::Base
  alias_attribute :class_teacher,:teacher_id
  validates :grade_id,:school_id,:section, presence:true
  belongs_to :grade
  belongs_to :school
  belongs_to :teacher
end
