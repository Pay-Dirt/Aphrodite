class Event < ActiveRecord::Base
  validates :user_login_id,:event_type,:event_type_id,presence:true
  validates :event_type, length:{maximum:1}
  belongs_to :user_login
end
