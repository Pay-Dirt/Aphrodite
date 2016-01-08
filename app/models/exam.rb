class Exam < ActiveRecord::Base
  include ActiveRecord::Validations
  validates :batch_id,:subject_id,:exam_date,:exam_name, presence:true
  validates :exam_name, length:{maximum:20}
  validates :exam_date, date_today_or_future:true
  belongs_to :batch
  belongs_to :subject
  has_many :exam_marks
end
