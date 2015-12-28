class Exam < ActiveRecord::Base
  belongs_to :batch
  belongs_to :subject
end
