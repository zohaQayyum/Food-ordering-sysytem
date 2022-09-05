class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_inviter!
    authenticate_admin_user!(force: true)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName])
  end

  def after_invite_path_for(resource)
    admin_employees_path
  end
end
