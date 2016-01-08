class TestMarkSerializer < ActiveModel::Serializer
  attributes :id, :marks
  has_one :tests
  has_one :students
end
