require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { description: @item.description, jewelrycategory_id: @item.jewelrycategory_id, jewelrycollection_id: @item.jewelrycollection_id, jewelrygroup_id: @item.jewelrygroup_id, jewelrymetal_id: @item.jewelrymetal_id, location: @item.location, name: @item.name, price: @item.price, upc: @item.upc }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { description: @item.description, jewelrycategory_id: @item.jewelrycategory_id, jewelrycollection_id: @item.jewelrycollection_id, jewelrygroup_id: @item.jewelrygroup_id, jewelrymetal_id: @item.jewelrymetal_id, location: @item.location, name: @item.name, price: @item.price, upc: @item.upc }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
