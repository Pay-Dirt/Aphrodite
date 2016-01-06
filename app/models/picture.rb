class Picture < ActiveRecord::Base
  belongs_to :has_picture, polymorphic:true
end
