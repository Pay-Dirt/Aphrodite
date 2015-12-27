class Lecture < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :subject
  belongs_to :batch
  belongs_to :school
end
