class StudentAttendance < ActiveRecord::Base
  belongs_to :student
  belongs_to :school
end
