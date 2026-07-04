require "test_helper"

class OrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get or_url
    assert_response :success
  end
end
