require "test_helper"

class BenevolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benevol = benevols(:one)
  end

  test "should get index" do
    get benevols_url
    assert_response :success
  end

  test "should get new" do
    get new_benevol_url
    assert_response :success
  end

  test "should create benevol" do
    assert_difference("Benevol.count") do
      post benevols_url, params: { benevol: { full_name: @benevol.full_name, img: @benevol.img, link_fb: @benevol.link_fb, link_ldin: @benevol.link_ldin, link_tw: @benevol.link_tw, role: @benevol.role } }
    end

    assert_redirected_to benevol_url(Benevol.last)
  end

  test "should show benevol" do
    get benevol_url(@benevol)
    assert_response :success
  end

  test "should get edit" do
    get edit_benevol_url(@benevol)
    assert_response :success
  end

  test "should update benevol" do
    patch benevol_url(@benevol), params: { benevol: { full_name: @benevol.full_name, img: @benevol.img, link_fb: @benevol.link_fb, link_ldin: @benevol.link_ldin, link_tw: @benevol.link_tw, role: @benevol.role } }
    assert_redirected_to benevol_url(@benevol)
  end

  test "should destroy benevol" do
    assert_difference("Benevol.count", -1) do
      delete benevol_url(@benevol)
    end

    assert_redirected_to benevols_url
  end
end
