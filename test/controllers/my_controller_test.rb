require "test_helper"

class MyControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get my_post_url
    assert_response :success
  end
end
