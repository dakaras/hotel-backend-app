require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url, as: :json
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post reservations_url, params: { reservation: { end_date: @reservation.end_date, guest_id: @reservation.guest_id, room_id: @reservation.room_id, start_date: @reservation.start_date } }, as: :json
    end

    assert_response 201
  end

  test "should show reservation" do
    get reservation_url(@reservation), as: :json
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { end_date: @reservation.end_date, guest_id: @reservation.guest_id, room_id: @reservation.room_id, start_date: @reservation.start_date } }, as: :json
    assert_response 200
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete reservation_url(@reservation), as: :json
    end

    assert_response 204
  end
end
