require "test_helper"

class NewtonControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get newton_input_url
    assert_response :success
  end
end
