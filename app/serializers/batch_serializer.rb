class BatchSerializer < ActiveModel::Serializer
  attributes :id,:section,:class_alias
  belongs_to :teacher
  belongs_to :grade
  class TeacherSerializer < ActiveModel::Serializer
    attribute :teacher_name
  end
end
