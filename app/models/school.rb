class School < ActiveRecord::Base
  
  #validations
  validates :name,:city,:state,:address,:contact, presence: true
  validates :contact, format: {with: /\d+/, message:"should only contain digits"}, length:{in: 6..12}
  validates :name, length:{minimum: 10}
  
  #associations
  has_many :user_logins
end
