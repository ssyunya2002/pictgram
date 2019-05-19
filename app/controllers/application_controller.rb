class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  #「ApplicationControllerに「ある設定」を行い、ApplicationHelperのコードを削除できるようにしてください。」
  #とのことだが、ApplicationHelperをIncludeをするのではダメなのか。逆だとうまくいかず、またググってもこの方法しか見つからず。。
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  
end
