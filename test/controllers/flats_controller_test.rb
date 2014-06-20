require 'test_helper'

class FlatsControllerTest < ActionController::TestCase
  test "should get all_flats" do
    get :all_flats
    assert_response :success
  end

end
