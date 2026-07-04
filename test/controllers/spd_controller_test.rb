require "test_helper"

class SpdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spd_index_url
    assert_response :success
  end
end
