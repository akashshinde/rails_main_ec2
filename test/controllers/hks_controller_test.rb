require 'test_helper'

class HksControllerTest < ActionController::TestCase
  setup do
    @hk = hks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hk" do
    assert_difference('Hk.count') do
      post :create, hk: { floor: @hk.floor, hall_size: @hk.hall_size, kitchen_size: @hk.kitchen_size, sold_out: @hk.sold_out, status: @hk.status }
    end

    assert_redirected_to hk_path(assigns(:hk))
  end

  test "should show hk" do
    get :show, id: @hk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hk
    assert_response :success
  end

  test "should update hk" do
    patch :update, id: @hk, hk: { floor: @hk.floor, hall_size: @hk.hall_size, kitchen_size: @hk.kitchen_size, sold_out: @hk.sold_out, status: @hk.status }
    assert_redirected_to hk_path(assigns(:hk))
  end

  test "should destroy hk" do
    assert_difference('Hk.count', -1) do
      delete :destroy, id: @hk
    end

    assert_redirected_to hks_path
  end
end
