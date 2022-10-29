require "test_helper"

class Users::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_articles_index_url
    assert_response :success
  end
end
