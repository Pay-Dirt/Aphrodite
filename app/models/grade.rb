class Grade < ActiveRecord::Base
  validates :grade_level, presence:true
  has_many :subjects
  has_many :batches
end
