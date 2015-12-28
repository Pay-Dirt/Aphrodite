module SessionHelper
  
  def current_user
    @current_user ||= UserLogin.find_by_id(session[:user_id])
    @current_user.current_role = session[:current_role]
    @current_user.current_permissions = session[:current_permissions]
    return @current_user
  end
  
  def log_in(user)
    @current_user = user
    session[:user_id] = user.id
    session[:school_id] = user.school_id
    set_default_role?
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def check_authentication
    if !logged_in?
      render json: {response_metadata:{success:"no",type:"authFail",display:"yes",message:"Authentication Failed!"},data:{}}
    end
  end
  
  def log_out
    session.delete(:user_id)
    session.delete(:school_id)
    @current_user = nil
  end
  
  def set_new_role?(new_role)
    role = current_user.roles.find_by(new_role)
    if !role.nil?
      session[:current_role] = role
      session[:current_permissions] = role.permissions
      return true
    else
      return false
    end
  end
  
  def set_default_role?
    default_role = current_user.roles.first
    if !default_role.nil?
      session[:current_role] = default_role
      session[:current_permissions] = default_role.permissions
      return true
    else
      return false
    end
    
  end
  
  private
  def set_school
    @school = School.find_by_id(session[:user_id])
  end
end
