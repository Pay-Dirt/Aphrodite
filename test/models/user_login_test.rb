require 'test_helper'

class UserLoginTest < ActiveSupport::TestCase
  def setup
     @user=UserLogin.new
     @user.username="akashvyom"
     @user.contact="123456789"
     @user.password="akash"
     @user.password_confirmation="akash"
     @user.school_id=1
  end
  test "should be valid" do
    assert @user.valid?
  end
  test "school id is present" do
    @user.school_id=nil
    assert_not @user.valid?
  end
  test "contact number valid" do
    @user.contact=999999999999
    assert @user.valid?
  end
  test "contact not valid" do
    @user.contact=9999999999999
    assert_not @user.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
