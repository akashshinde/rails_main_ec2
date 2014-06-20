require 'test_helper'

class BbhksControllerTest < ActionController::TestCase
  setup do
    @bbhk = bbhks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bbhks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bbhk" do
    assert_difference('Bbhk.count') do
      post :create, bbhk: { bed1_size: @bbhk.bed1_size, bed2_size: @bbhk.bed2_size, floor: @bbhk.floor, hall_size: @bbhk.hall_size, kitchen_size: @bbhk.kitchen_size, sold_out: @bbhk.sold_out, status: @bbhk.status }
    end

    assert_redirected_to bbhk_path(assigns(:bbhk))
  end

  test "should show bbhk" do
    get :show, id: @bbhk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bbhk
    assert_response :success
  end

  test "should update bbhk" do
    patch :update, id: @bbhk, bbhk: { bed1_size: @bbhk.bed1_size, bed2_size: @bbhk.bed2_size, floor: @bbhk.floor, hall_size: @bbhk.hall_size, kitchen_size: @bbhk.kitchen_size, sold_out: @bbhk.sold_out, status: @bbhk.status }
    assert_redirected_to bbhk_path(assigns(:bbhk))
  end

  test "should destroy bbhk" do
    assert_difference('Bbhk.count', -1) do
      delete :destroy, id: @bbhk
    end

    assert_redirected_to bbhks_path
  end
end
