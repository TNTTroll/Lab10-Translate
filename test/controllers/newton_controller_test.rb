require "test_helper"

class NewtonControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get newton_input_url
    assert_response :success
  end

  test 'should not get equal' do
    post '/newton/result', params: {a: '123', format: 'html'}
    res1 = @response
    post '/newton/result', params: {a: '456', format: 'html'}
    res2 = @response
    assert_not_equal res1, res2
  end
end
