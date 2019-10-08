class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  def index
    if logged_in?
      @reservations = current_Guest.reservations
      render json: ReservationSerializer.new(@reservations)
    else
      render json: {
        error: 'Must be logged in to view reservations.'
      }
  end

  # GET /reservations/1
  def show
    reservation_json = ReservationSerializer.new(@reservation).serialized_json
    render json:  reservation_json
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :guest_id, :room_id)
    end
end
