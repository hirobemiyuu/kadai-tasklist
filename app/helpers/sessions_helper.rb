module SessionsHelper
  # ヘルパーモジュールに書かれている全てのメソッドはViewから無条件で呼び出すことができる
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
end
