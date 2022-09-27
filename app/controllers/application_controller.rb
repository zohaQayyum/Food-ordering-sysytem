class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if current_employee
      employees_index_path
    elsif current_admin_user
      admin_dashboard_path
    end
  end

  def authenticate_inviter!
    authenticate_admin_user!(force: true)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def after_invite_path_for(resource)
    admin_employees_path
  end
end
