require "application_system_test_case"

class VideoosTest < ApplicationSystemTestCase
  setup do
    @videoo = videoos(:one)
  end

  test "visiting the index" do
    visit videoos_url
    assert_selector "h1", text: "Videoos"
  end

  test "creating a Videoo" do
    visit videoos_url
    click_on "New Videoo"

    fill_in "Description", with: @videoo.description
    fill_in "Title", with: @videoo.title
    click_on "Create Videoo"

    assert_text "Videoo was successfully created"
    click_on "Back"
  end

  test "updating a Videoo" do
    visit videoos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @videoo.description
    fill_in "Title", with: @videoo.title
    click_on "Update Videoo"

    assert_text "Videoo was successfully updated"
    click_on "Back"
  end

  test "destroying a Videoo" do
    visit videoos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Videoo was successfully destroyed"
  end
end
