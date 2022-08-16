require "test_helper"

class AppCheckControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_check_index_url
    assert_response :success
  end
end
