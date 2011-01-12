ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
end

class ActionController::TestCase
  
  setup do
    setup_basic_auth
  end

  def setup_basic_auth
    @request.env["HTTP_AUTHORIZATION"] = ActionController::HttpAuthentication::Basic.encode_credentials(users(:one).username, users(:one).password)
  end

end
