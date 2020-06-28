class ReservationsController < ApplicationController
    def index
        
    end
    
    def new
        if user_signed_in?
            @reservation = Reservation.new
            @location = Location.select("address")
        else
            redirect_to new_user_registration_path
        end
    end
    
    def create
        @user = current_user.id
        @reservation = Reservation.create(reservation_params)
    end
    def reservation_params
        params.require(:reservation).permit(
            :startDate,
            :endDate,
            :location_id,
        ).merge(user_id: current_user.id)
    end

end
