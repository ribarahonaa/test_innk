require "application_system_test_case"

class ArriendosTest < ApplicationSystemTestCase
  setup do
    @arriendo = arriendos(:one)
  end

  test "visiting the index" do
    visit arriendos_url
    assert_selector "h1", text: "Arriendos"
  end

  test "creating a Arriendo" do
    visit arriendos_url
    click_on "New Arriendo"

    fill_in "Films", with: @arriendo.films_id
    fill_in "Kind", with: @arriendo.kind
    fill_in "Series", with: @arriendo.series_id
    fill_in "Users", with: @arriendo.users_id
    click_on "Create Arriendo"

    assert_text "Arriendo was successfully created"
    click_on "Back"
  end

  test "updating a Arriendo" do
    visit arriendos_url
    click_on "Edit", match: :first

    fill_in "Films", with: @arriendo.films_id
    fill_in "Kind", with: @arriendo.kind
    fill_in "Series", with: @arriendo.series_id
    fill_in "Users", with: @arriendo.users_id
    click_on "Update Arriendo"

    assert_text "Arriendo was successfully updated"
    click_on "Back"
  end

  test "destroying a Arriendo" do
    visit arriendos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arriendo was successfully destroyed"
  end
end
