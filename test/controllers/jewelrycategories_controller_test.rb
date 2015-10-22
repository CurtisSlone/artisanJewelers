require 'test_helper'

class JewelrycategoriesControllerTest < ActionController::TestCase
  setup do
    @jewelrycategory = jewelrycategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jewelrycategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jewelrycategory" do
    assert_difference('Jewelrycategory.count') do
      post :create, jewelrycategory: { jewelrycategory: @jewelrycategory.jewelrycategory }
    end

    assert_redirected_to jewelrycategory_path(assigns(:jewelrycategory))
  end

  test "should show jewelrycategory" do
    get :show, id: @jewelrycategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jewelrycategory
    assert_response :success
  end

  test "should update jewelrycategory" do
    patch :update, id: @jewelrycategory, jewelrycategory: { jewelrycategory: @jewelrycategory.jewelrycategory }
    assert_redirected_to jewelrycategory_path(assigns(:jewelrycategory))
  end

  test "should destroy jewelrycategory" do
    assert_difference('Jewelrycategory.count', -1) do
      delete :destroy, id: @jewelrycategory
    end

    assert_redirected_to jewelrycategories_path
  end
end
