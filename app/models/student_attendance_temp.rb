class StudentAttendanceTemp < ActiveRecord::Base
  include ActiveRecord::Validations
  validates :teacher_id,:school_id,:status,:attendance_date,presence:true
  validates :attendance_date, date_today_or_future:true, on: [:create]
  belongs_to :student
end
