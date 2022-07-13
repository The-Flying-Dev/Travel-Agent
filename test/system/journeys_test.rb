require "application_system_test_case"

class JourneysTest < ApplicationSystemTestCase
  setup do
    @journey = journeys(:one)
  end

  test "visiting the index" do
    visit journeys_url
    assert_selector "h1", text: "Journeys"
  end

  test "creating a Journey" do
    visit journeys_url
    click_on "New Journey"

    fill_in "Name", with: @journey.name
    fill_in "Train", with: @journey.train_id
    click_on "Create Journey"

    assert_text "Journey was successfully created"
    click_on "Back"
  end

  test "updating a Journey" do
    visit journeys_url
    click_on "Edit", match: :first

    fill_in "Name", with: @journey.name
    fill_in "Train", with: @journey.train_id
    click_on "Update Journey"

    assert_text "Journey was successfully updated"
    click_on "Back"
  end

  test "destroying a Journey" do
    visit journeys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Journey was successfully destroyed"
  end
end
