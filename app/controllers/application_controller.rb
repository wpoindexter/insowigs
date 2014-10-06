class ApplicationController < ActionController::Base
  after_filter :reset_last_captcha_code!

  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    redirect_to '/admin' if resource.admin?
    'http://google.com'
  end

  def after_sign_up_path_for(resource)
    'http://google.com'
  end
end
