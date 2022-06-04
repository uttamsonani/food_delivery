class ReservationController < ApplicationController
    before_action :authenticate_user!, only: %i[ create_reservation ]

    # def new_reservation
    #     @reservation = Reservation.new
    #     # @reservation.build_client
    #   end
    
      def create_reservation
        @reversation = Reservation.new(reservation_params)
    
        if @reversation.save
          render :show, id: @reservation
        else
        #   render :new
        end
      end

      def show_reservation
          @reservation =  Reservation.find(params[:reservation_id])
      end
    private
    
    def reservation_params
        
        # To permit an entire hash of parameters
  
        # params.require(:reservation).permit!
        
        #Same work like above 
        params.permit(:persons, :time, :name, :email, :phone_no, :date, :special_request)
      end
end
