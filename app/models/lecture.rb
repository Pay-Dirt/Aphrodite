class Lecture < ActiveRecord::Base
  validates :teacher_id,:subject_id,:school_id,:lecture_name,presence:true
  belongs_to :teacher
  belongs_to :subject
  belongs_to :school
  has_many :tests
  has_many :lecture_batch_maps
  has_many :batches, through: :lecture_batch_maps
end
