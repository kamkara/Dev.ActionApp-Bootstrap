require "test_helper"

class AgirControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agir_index_url
    assert_response :success
  end
end
