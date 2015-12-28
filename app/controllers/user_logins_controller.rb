class UserLoginsController < ApplicationController
  
  def new
    user_login = UserLogin.new
    render json: {form_data:user_login.as_json}
  end
  
  def create
    user_login = UserLogin.new(user_login_create_params)
    if user_login.save
      render json: {response_metadata:{success:"yes",type:"",display:"yes",message:"Account created!"},data:{user_info:user.as_json(except:[:password_digest])}}
    else
      render json: {response_metadata:{success:"no",type:"",display:"yes",message:"Account created!"},error_data:{error:user_login.errors.messages},data:{user_info:user_login.as_json(except:[:password_digest])}}
    end
  end
  
  private
  def user_login_create_params
    params.require(:user_login).permit(:username,:email,:password,:password_digest,:contact)
  end
  
end
