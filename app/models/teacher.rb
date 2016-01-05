class Teacher < ActiveRecord::Base
  #validations
  include ActiveRecord::Validations
  validates :teacher_name,:school_id, presence:true
  validates :dob, dob_limit:true
  validates :school_id, presence:true
  #associations
  belongs_to :user_login
  belongs_to :school
  has_one :batch
  has_many :teacher_attendances
  has_many :lectures
  has_one :picture, as: :has_picture
end
