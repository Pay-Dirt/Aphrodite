class SessionController < ApplicationController
  
  def create
    #set user variable based on key in session params
    if params[:session].has_key?(:email)
      user = UserLogin.find_by(email: params[:session][:email])
    elsif params[:session].has_key?(:username)
      user = UserLogin.find_by(username: params[:session][:username])
    else
      render json: {response_metadata:{success:"no",type:"authFail",display:"yes",message:"Login ID or passwrod invalid!"},data:{}}
    end
    
    #authenticating user using bcrypt
    if user && user.authenticate(params[:password])
      log_in user
      puts current_user.as_json(methods: :current_role)
      render json: {response_metadata:{success:"yes",type:"",display:"yes",message:"Account authenticated!"},data:{user_info:current_user.as_json(except:[:password_digest])}}
    else
      render json: {response_metadata:{success:"no",type:"authFail",display:"yes",message:"Login ID or passwrod invalid!"},data:{}}
    end
  end
  
  def destroy
    log_out
    render {}
  end
  
  #when user changes its role after log in
  def change_role
    if set_new_role?(params_role_switch)
          
    end
  end
  
  private
  def params_role_switch
    params.require(:session).permit(:role_id)
  end
end
