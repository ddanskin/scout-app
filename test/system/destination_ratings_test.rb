require "application_system_test_case"

class DestinationRatingsTest < ApplicationSystemTestCase
  setup do
    @destination_rating = destination_ratings(:one)
  end

  test "visiting the index" do
    visit destination_ratings_url
    assert_selector "h1", text: "Destination Ratings"
  end

  test "creating a Destination rating" do
    visit destination_ratings_url
    click_on "New Destination Rating"

    fill_in "Rating", with: @destination_rating.rating
    click_on "Create Destination rating"

    assert_text "Destination rating was successfully created"
    click_on "Back"
  end

  test "updating a Destination rating" do
    visit destination_ratings_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @destination_rating.rating
    click_on "Update Destination rating"

    assert_text "Destination rating was successfully updated"
    click_on "Back"
  end

  test "destroying a Destination rating" do
    visit destination_ratings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destination rating was successfully destroyed"
  end
end
