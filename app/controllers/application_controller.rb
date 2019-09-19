class ApplicationController < ActionController::API
    
    def current_guest
        Guest.find_by(id: session[:guest_id])
    end

    def logged_in?
        !!current_guest
    end
end
