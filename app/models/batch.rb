class Batch < ActiveRecord::Base
  belongs_to :grade
  belongs_to :school
  belongs_to :teacher
end
