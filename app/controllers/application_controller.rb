class ApplicationController < ActionController::Base
  $zone = ActiveSupport::TimeZone.new("Asia/Kolkata")
  protect_from_forgery

  helper_method :current_user

  before_action :check_login_session

  private

  def check_login_session
    if controller_name=='user_sessions' || controller_name=='users'
    
    else
      if current_user.present?

      else
        redirect_to root_path
      end
    end
  end

  def current_user_session
    @current_user_session = UserSession.find
  end

  def current_user
    @current_user = current_user_session && current_user_session.record
    @current_user
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

end
