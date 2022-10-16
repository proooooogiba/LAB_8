require "test_helper"

class InputControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get input_view_url
    assert_response :success
  end
end
