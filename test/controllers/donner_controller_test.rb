require "test_helper"

class DonnerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get donner_index_url
    assert_response :success
  end
end
