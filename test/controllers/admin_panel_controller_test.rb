require 'test_helper'

class AdminPanelControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get orders" do
    get :orders
    assert_response :success
  end

end
