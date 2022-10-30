class ApplicationController < ActionController::Base
 before_action :authenticate_admin!, except:[:top]
 before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource)
    if resource == :admin
      new_admin_session_path
    else
      root_path
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
