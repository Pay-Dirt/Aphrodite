class BatchSerializer < ActiveModel::Serializer
  attributes :id,:section,:class_alias
  belongs_to :teacher
  belongs_to :grade
end
