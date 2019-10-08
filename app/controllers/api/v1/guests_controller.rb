class Api::V1::GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :update, :destroy]

  # GET /guests
  def index
    @guests = Guest.all
    render json: @guests
  end

  # GET /guests/1
  def show
    guest_json = GuestSerializer.new(@guest).serialized_json
    render json:  guest_json
  end

  # POST /guests
  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      render json: @guest, status: :created, location: @guest
    else
      render json: @guest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guests/1
  def update
    if @guest.update(guest_params)
      render json: @guest
    else
      render json: @guest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guests/1
  def destroy
    @guest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guest_params
      params.require(:guest).permit(:name, :username, :password)
    end
end
