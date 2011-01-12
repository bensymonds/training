class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  private
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == User.first.username && password == User.first.password
    end
  end
end
