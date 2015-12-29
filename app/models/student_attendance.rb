class StudentAttendance < ActiveRecord::Base
  include ActiveRecord::Validations
  validates :teacher_id,:school_id,:status,:attendance_date,presence:true
  validates :attendance_date, date_today_or_future:true
  belongs_to :student
  belongs_to :school
end
