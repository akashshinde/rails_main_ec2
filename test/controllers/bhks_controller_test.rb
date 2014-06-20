require 'test_helper'

class BhksControllerTest < ActionController::TestCase
  setup do
    @bhk = bhks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bhks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bhk" do
    assert_difference('Bhk.count') do
      post :create, bhk: { bed_size: @bhk.bed_size, floor: @bhk.floor, hall_size: @bhk.hall_size, kitchen_size: @bhk.kitchen_size, sold_out: @bhk.sold_out, status: @bhk.status }
    end

    assert_redirected_to bhk_path(assigns(:bhk))
  end

  test "should show bhk" do
    get :show, id: @bhk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bhk
    assert_response :success
  end

  test "should update bhk" do
    patch :update, id: @bhk, bhk: { bed_size: @bhk.bed_size, floor: @bhk.floor, hall_size: @bhk.hall_size, kitchen_size: @bhk.kitchen_size, sold_out: @bhk.sold_out, status: @bhk.status }
    assert_redirected_to bhk_path(assigns(:bhk))
  end

  test "should destroy bhk" do
    assert_difference('Bhk.count', -1) do
      delete :destroy, id: @bhk
    end

    assert_redirected_to bhks_path
  end
end
