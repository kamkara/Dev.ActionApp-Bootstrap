require "test_helper"

class BemembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bemembership = bememberships(:one)
  end

  test "should get index" do
    get bememberships_url
    assert_response :success
  end

  test "should get new" do
    get new_bemembership_url
    assert_response :success
  end

  test "should create bemembership" do
    assert_difference("Bemembership.count") do
      post bememberships_url, params: { bemembership: { contact: @bemembership.contact, country: @bemembership.country, email: @bemembership.email, first_name: @bemembership.first_name, gender: @bemembership.gender, last_name: @bemembership.last_name } }
    end

    assert_redirected_to bemembership_url(Bemembership.last)
  end

  test "should show bemembership" do
    get bemembership_url(@bemembership)
    assert_response :success
  end

  test "should get edit" do
    get edit_bemembership_url(@bemembership)
    assert_response :success
  end

  test "should update bemembership" do
    patch bemembership_url(@bemembership), params: { bemembership: { contact: @bemembership.contact, country: @bemembership.country, email: @bemembership.email, first_name: @bemembership.first_name, gender: @bemembership.gender, last_name: @bemembership.last_name } }
    assert_redirected_to bemembership_url(@bemembership)
  end

  test "should destroy bemembership" do
    assert_difference("Bemembership.count", -1) do
      delete bemembership_url(@bemembership)
    end

    assert_redirected_to bememberships_url
  end
end
