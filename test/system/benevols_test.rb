require "application_system_test_case"

class BenevolsTest < ApplicationSystemTestCase
  setup do
    @benevol = benevols(:one)
  end

  test "visiting the index" do
    visit benevols_url
    assert_selector "h1", text: "Benevols"
  end

  test "should create benevol" do
    visit benevols_url
    click_on "New benevol"

    fill_in "Full name", with: @benevol.full_name
    fill_in "Img", with: @benevol.img
    fill_in "Link fb", with: @benevol.link_fb
    fill_in "Link ldin", with: @benevol.link_ldin
    fill_in "Link tw", with: @benevol.link_tw
    fill_in "Role", with: @benevol.role
    click_on "Create Benevol"

    assert_text "Benevol was successfully created"
    click_on "Back"
  end

  test "should update Benevol" do
    visit benevol_url(@benevol)
    click_on "Edit this benevol", match: :first

    fill_in "Full name", with: @benevol.full_name
    fill_in "Img", with: @benevol.img
    fill_in "Link fb", with: @benevol.link_fb
    fill_in "Link ldin", with: @benevol.link_ldin
    fill_in "Link tw", with: @benevol.link_tw
    fill_in "Role", with: @benevol.role
    click_on "Update Benevol"

    assert_text "Benevol was successfully updated"
    click_on "Back"
  end

  test "should destroy Benevol" do
    visit benevol_url(@benevol)
    click_on "Destroy this benevol", match: :first

    assert_text "Benevol was successfully destroyed"
  end
end
