class Parent < ActiveRecord::Base
  validates :student_id,presence:true
  validates :contact_phone,:contact_alt_phone, format: {with: /\d+/, message: "should only contain digits"}, length:{in: 6..12}
  validates :contact_email, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is not valid"}, allow_blank: true
  belongs_to :student
  has_one :picture, as: :has_picture
  has_one :user_login, as: :user_type
end
