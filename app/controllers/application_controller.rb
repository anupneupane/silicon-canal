class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    if user_signed_in? && current_user.admin?
      true
    else
      render 404
      false
    end
  end
end
