class Api::V1::SessionsController < ApplicationController
    def create 
        @guest = Guest.find_by(username: params[:username])
        if @guest && @guest.authenticate(params[:session][:password])
            session[:guest_id] = @guest.id 
            render json: GuestSerializer.new(@guest), status: :ok
        else
            render json: {error: "Incorrect username or password. Please try again."}
        end
    end

    def get_current_guest 
        if logged_in?
            render json: GuestSerializer.new(current_guest)
        else 
            render json: {
                alert: "Not logged in."
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: "successfully logged out"
        }, status: :ok
    end

end
