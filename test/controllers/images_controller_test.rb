require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  test "should get add_image" do
    get :add_image
    assert_response :success
  end

end
