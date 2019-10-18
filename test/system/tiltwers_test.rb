require "application_system_test_case"

class TiltwersTest < ApplicationSystemTestCase
  setup do
    @tiltwer = tiltwers(:one)
  end

  test "visiting the index" do
    visit tiltwers_url
    assert_selector "h1", text: "Tiltwers"
  end

  test "creating a Tiltwer" do
    visit tiltwers_url
    click_on "New Tiltwer"

    fill_in "Content", with: @tiltwer.content
    fill_in "User", with: @tiltwer.user_id
    click_on "Create Tiltwer"

    assert_text "Tiltwer was successfully created"
    click_on "Back"
  end

  test "updating a Tiltwer" do
    visit tiltwers_url
    click_on "Edit", match: :first

    fill_in "Content", with: @tiltwer.content
    fill_in "User", with: @tiltwer.user_id
    click_on "Update Tiltwer"

    assert_text "Tiltwer was successfully updated"
    click_on "Back"
  end

  test "destroying a Tiltwer" do
    visit tiltwers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tiltwer was successfully destroyed"
  end
end
