require "test_helper"

class Users::DashBordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_dash_bords_index_url
    assert_response :success
  end
end
