require 'test_helper'

class JewelrycollectionsControllerTest < ActionController::TestCase
  setup do
    @jewelrycollection = jewelrycollections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jewelrycollections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jewelrycollection" do
    assert_difference('Jewelrycollection.count') do
      post :create, jewelrycollection: { jewelcollection: @jewelrycollection.jewelcollection }
    end

    assert_redirected_to jewelrycollection_path(assigns(:jewelrycollection))
  end

  test "should show jewelrycollection" do
    get :show, id: @jewelrycollection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jewelrycollection
    assert_response :success
  end

  test "should update jewelrycollection" do
    patch :update, id: @jewelrycollection, jewelrycollection: { jewelcollection: @jewelrycollection.jewelcollection }
    assert_redirected_to jewelrycollection_path(assigns(:jewelrycollection))
  end

  test "should destroy jewelrycollection" do
    assert_difference('Jewelrycollection.count', -1) do
      delete :destroy, id: @jewelrycollection
    end

    assert_redirected_to jewelrycollections_path
  end
end
