require 'test_helper'

class DestinationRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destination_rating = destination_ratings(:one)
  end

  test "should get index" do
    get destination_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_destination_rating_url
    assert_response :success
  end

  test "should create destination_rating" do
    assert_difference('DestinationRating.count') do
      post destination_ratings_url, params: { destination_rating: { rating: @destination_rating.rating } }
    end

    assert_redirected_to destination_rating_url(DestinationRating.last)
  end

  test "should show destination_rating" do
    get destination_rating_url(@destination_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_destination_rating_url(@destination_rating)
    assert_response :success
  end

  test "should update destination_rating" do
    patch destination_rating_url(@destination_rating), params: { destination_rating: { rating: @destination_rating.rating } }
    assert_redirected_to destination_rating_url(@destination_rating)
  end

  test "should destroy destination_rating" do
    assert_difference('DestinationRating.count', -1) do
      delete destination_rating_url(@destination_rating)
    end

    assert_redirected_to destination_ratings_url
  end
end
