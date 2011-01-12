require 'test_helper'

class WeighingsControllerTest < ActionController::TestCase

  setup do
    @weighing = weighings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weighings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weighing" do
    assert_difference('Weighing.count') do
      post :create, :weighing => @weighing.attributes
    end

    assert_redirected_to weighings_path
  end

  test "authentication" do
    @request.env["HTTP_AUTHORIZATION"] = nil # undo test_helper setup

    get :index
    assert_response :unauthorized

    setup_basic_auth
    get :index
    assert_response :success
  end

end
