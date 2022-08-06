require "application_system_test_case"

class LegalsTest < ApplicationSystemTestCase
  setup do
    @legal = legals(:one)
  end

  test "visiting the index" do
    visit legals_url
    assert_selector "h1", text: "Legals"
  end

  test "should create legal" do
    visit legals_url
    click_on "New legal"

    fill_in "Content", with: @legal.content
    fill_in "Title", with: @legal.title
    fill_in "User", with: @legal.user_id
    click_on "Create Legal"

    assert_text "Legal was successfully created"
    click_on "Back"
  end

  test "should update Legal" do
    visit legal_url(@legal)
    click_on "Edit this legal", match: :first

    fill_in "Content", with: @legal.content
    fill_in "Title", with: @legal.title
    fill_in "User", with: @legal.user_id
    click_on "Update Legal"

    assert_text "Legal was successfully updated"
    click_on "Back"
  end

  test "should destroy Legal" do
    visit legal_url(@legal)
    click_on "Destroy this legal", match: :first

    assert_text "Legal was successfully destroyed"
  end
end
