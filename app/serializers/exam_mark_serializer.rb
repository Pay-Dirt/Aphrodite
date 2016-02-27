class ExamMarkSerializer < ActiveModel::Serializer
  attributes :id, :marks
  has_one :exams
  has_one :students
end
