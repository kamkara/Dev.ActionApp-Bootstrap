require "application_system_test_case"

class PrivatesTest < ApplicationSystemTestCase
  setup do
    @private = privates(:one)
  end

  test "visiting the index" do
    visit privates_url
    assert_selector "h1", text: "Privates"
  end

  test "should create private" do
    visit privates_url
    click_on "New private"

    fill_in "Content", with: @private.content
    fill_in "Title", with: @private.title
    fill_in "User", with: @private.user_id
    click_on "Create Private"

    assert_text "Private was successfully created"
    click_on "Back"
  end

  test "should update Private" do
    visit private_url(@private)
    click_on "Edit this private", match: :first

    fill_in "Content", with: @private.content
    fill_in "Title", with: @private.title
    fill_in "User", with: @private.user_id
    click_on "Update Private"

    assert_text "Private was successfully updated"
    click_on "Back"
  end

  test "should destroy Private" do
    visit private_url(@private)
    click_on "Destroy this private", match: :first

    assert_text "Private was successfully destroyed"
  end
end
