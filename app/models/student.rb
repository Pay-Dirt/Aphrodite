class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :batch
  belongs_to :course
end
