class Test < ActiveRecord::Base
  include ActiveRecord::Validations
  validates :lecture_id,:test_date,:test_name, presence:true
  validates :test_name, length:{maximum:20}
  validates :test_date, date_today_or_future:true
  belongs_to :lecture
end
