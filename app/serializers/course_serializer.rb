class CourseSerializer < ActiveModel::Serializer
  attributes :id,:course_name,:comments
  belongs_to :grade
end
