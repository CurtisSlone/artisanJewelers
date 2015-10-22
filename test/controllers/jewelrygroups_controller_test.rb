require 'test_helper'

class JewelrygroupsControllerTest < ActionController::TestCase
  setup do
    @jewelrygroup = jewelrygroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jewelrygroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jewelrygroup" do
    assert_difference('Jewelrygroup.count') do
      post :create, jewelrygroup: { jewelrygroup: @jewelrygroup.jewelrygroup }
    end

    assert_redirected_to jewelrygroup_path(assigns(:jewelrygroup))
  end

  test "should show jewelrygroup" do
    get :show, id: @jewelrygroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jewelrygroup
    assert_response :success
  end

  test "should update jewelrygroup" do
    patch :update, id: @jewelrygroup, jewelrygroup: { jewelrygroup: @jewelrygroup.jewelrygroup }
    assert_redirected_to jewelrygroup_path(assigns(:jewelrygroup))
  end

  test "should destroy jewelrygroup" do
    assert_difference('Jewelrygroup.count', -1) do
      delete :destroy, id: @jewelrygroup
    end

    assert_redirected_to jewelrygroups_path
  end
end
