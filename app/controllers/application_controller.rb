class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	flash[:notice] = "Welcome! You have signed up successfully."
  	case resource
  	when User
      	users_avatars_path
  	when Admin
  		admins_movies_path
  	end
  end

  def after_sign_out_path_for(resource)
  	flash[:notice]= "Signed out successfully."
    case resource
    when :user
      user_session_path
    when :admin
      new_admin_session_path
    end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :is_deleted])
    devise_parameter_sanitizer.permit(:account_update, keys: [:is_deleted])
  end
end
