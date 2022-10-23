class ApplicationController < ActionController::Base
 before_action :authenticate_admin!, except:[:top]

  def after_sign_out_path_for(resource)
    if resource == :admin
      new_admin_session_path
    else
      root_path
    end
  end
end
