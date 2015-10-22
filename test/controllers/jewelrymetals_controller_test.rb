require 'test_helper'

class JewelrymetalsControllerTest < ActionController::TestCase
  setup do
    @jewelrymetal = jewelrymetals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jewelrymetals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jewelrymetal" do
    assert_difference('Jewelrymetal.count') do
      post :create, jewelrymetal: { metal: @jewelrymetal.metal }
    end

    assert_redirected_to jewelrymetal_path(assigns(:jewelrymetal))
  end

  test "should show jewelrymetal" do
    get :show, id: @jewelrymetal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jewelrymetal
    assert_response :success
  end

  test "should update jewelrymetal" do
    patch :update, id: @jewelrymetal, jewelrymetal: { metal: @jewelrymetal.metal }
    assert_redirected_to jewelrymetal_path(assigns(:jewelrymetal))
  end

  test "should destroy jewelrymetal" do
    assert_difference('Jewelrymetal.count', -1) do
      delete :destroy, id: @jewelrymetal
    end

    assert_redirected_to jewelrymetals_path
  end
end
