require 'test_helper'

class ParkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking = parkings(:one)
  end

  test "should get index" do
    get parkings_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_url
    assert_response :success
  end

  test "should create parking" do
    assert_difference('Parking.count') do
      post parkings_url, params: { parking: { address: @parking.address, id_parking: @parking.id_parking, image_one: @parking.image_one, image_two: @parking.image_two, name: @parking.name, number: @parking.number, pricing_hour: @parking.pricing_hour } }
    end

    assert_redirected_to parking_url(Parking.last)
  end

  test "should show parking" do
    get parking_url(@parking)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_url(@parking)
    assert_response :success
  end

  test "should update parking" do
    patch parking_url(@parking), params: { parking: { address: @parking.address, id_parking: @parking.id_parking, image_one: @parking.image_one, image_two: @parking.image_two, name: @parking.name, number: @parking.number, pricing_hour: @parking.pricing_hour } }
    assert_redirected_to parking_url(@parking)
  end

  test "should destroy parking" do
    assert_difference('Parking.count', -1) do
      delete parking_url(@parking)
    end

    assert_redirected_to parkings_url
  end
end
