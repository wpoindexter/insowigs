class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  http_basic_authenticate_with name: 'insowigs', password: 'insowigs' if Rails.env.eql? 'production'

  after_filter :reset_last_captcha_code!

  def after_sign_in_path_for(resource)
    '/admin' if resource.admin?
  end

  def after_sign_up_path_for(resource)
    
  end

  def require_user
    unless current_user
      flash[:error] = 'You must be logged in to access this page.'
      redirect_to new_session_path :user
      return false
    end
    true
  end

  def require_no_user
    if current_user
      flash[:alert] = 'You must be logged out to access this page.'
      redirect_to root_path
      return false
    end
    true
  end

  def require_admin
    if require_user
      unless current_user.admin?
        flash[:error] = 'You must be an administrator to access this page'
        redirect_to root_path
      end
    end
  end
end
