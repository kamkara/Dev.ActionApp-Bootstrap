require "test_helper"

class AccountedControllerTest < ActionDispatch::IntegrationTest
  test "should get signInMember" do
    get accounted_signInMember_url
    assert_response :success
  end

  test "should get signUpAdmin" do
    get accounted_signUpAdmin_url
    assert_response :success
  end

  test "should get signMember" do
    get accounted_signMember_url
    assert_response :success
  end
end
