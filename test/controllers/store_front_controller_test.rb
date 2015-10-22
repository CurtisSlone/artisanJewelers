require 'test_helper'

class StoreFrontControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get catalog" do
    get :catalog
    assert_response :success
  end

  test "should get items_by_group" do
    get :items_by_group
    assert_response :success
  end

  test "should get wedding" do
    get :wedding
    assert_response :success
  end

  test "should get exclusive" do
    get :exclusive
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
