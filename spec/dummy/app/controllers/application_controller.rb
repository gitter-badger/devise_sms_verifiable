class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :resource, :resource_name, :devise_mapping

  def sms_confirmation?
    return true if current_user && current_user.phone
  end

  def sms_secret
    answer = (10..48).to_a.shuffle.take(4)*''
    current_user.update(sms_answer: answer)
    answer
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:email, :password, :phone, :password_confirmation]
  end
end
