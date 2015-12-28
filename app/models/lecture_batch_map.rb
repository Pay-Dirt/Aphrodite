class LectureBatchMap < ActiveRecord::Base
  belongs_to :batch
  belongs_to :lecture
end
