require "test_helper"

class PrivatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @private = privates(:one)
  end

  test "should get index" do
    get privates_url
    assert_response :success
  end

  test "should get new" do
    get new_private_url
    assert_response :success
  end

  test "should create private" do
    assert_difference("Private.count") do
      post privates_url, params: { private: { content: @private.content, title: @private.title, user_id: @private.user_id } }
    end

    assert_redirected_to private_url(Private.last)
  end

  test "should show private" do
    get private_url(@private)
    assert_response :success
  end

  test "should get edit" do
    get edit_private_url(@private)
    assert_response :success
  end

  test "should update private" do
    patch private_url(@private), params: { private: { content: @private.content, title: @private.title, user_id: @private.user_id } }
    assert_redirected_to private_url(@private)
  end

  test "should destroy private" do
    assert_difference("Private.count", -1) do
      delete private_url(@private)
    end

    assert_redirected_to privates_url
  end
end
