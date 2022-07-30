require "test_helper"

class ActionPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get action_page_index_url
    assert_response :success
  end
end
