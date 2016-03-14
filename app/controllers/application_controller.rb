class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   protect_from_forgery

  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  def points_from_match(val1, val2, val3)
    val1 = 0 if val1.nil?
    val2 = 0 if val2.nil?
    val3 = 0 if val3.nil?
    val1 + val2 + val3
  end

  def admin
    current_user.admin.present?
  end

  helper_method :points_from_match
end
