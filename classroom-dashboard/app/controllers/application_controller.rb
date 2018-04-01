class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session.has_key? :user
      sessions[:user]
    end
  end
end
