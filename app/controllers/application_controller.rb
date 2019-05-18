class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  #「ApplicationControllerに「ある設定」を行い、ApplicationHelperのコードを削除できるようにしてください。」
  #とのことだが、ApplicationHelperをIncludeをするのではダメなのか。逆だとうまくいかず、またググってもこの方法しか見つからず。。

  include ApplicationHelper
  
end
