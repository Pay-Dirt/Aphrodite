class Notification < ActiveRecord::Base
  validates :user_login_id,:notification_content, presence:true
  belongs_to :user_login
end
