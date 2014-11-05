require 'test_helper'

class AddUserControllerTest < ActionController::TestCase
  test "should get do_transaction" do
    get :do_transaction
    assert_response :success
  end

  test "should get delete_transaction" do
    get :delete_transaction
    assert_response :success
  end

end
