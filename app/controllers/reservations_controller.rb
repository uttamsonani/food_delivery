class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show edit ]  
  before_action :authenticate_user!, only: %i[ new ]

    # Index Reservation
    def index
     @pagy, @reservations = pagy(current_user.reservations.all.order(date: :desc))
    end

    # New Reservation 
    def new
        @reservation = Reservation.new
        # @reservation.build_user
    end

    # Create Reservation
    def create
      @reservation = current_user.reservations.create(reservation_params)

      respond_to do |format|
        if @reservation.save
          format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully created." }  
        else
      #   puts @reservation.errors.full_messages
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end

    # Update Reservation
    def update
      # @user = User.find(params[:article_id])
      @reservation = current_user.reservations.find(params[:id])

      respond_to do |format|
        if @reservation.update(reservation_params)
          format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully updated." }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end 
    end

    # Destroy Reservation
    def destroy
      # @user = User.find(params[:article_id])
      @reservation = current_user.reservations.find(params[:id])
      @reservation.destroy
      # redirect_to index_path

      respond_to do |format|
        format.html { redirect_to reservations_url, notice: "Reservation was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    # Show Reservation
    def show
    end

    # Edit Reservation
    def edit
    end
      
    private

    def set_reservation
      @reservation = current_user.reservations.find(params[:id])
    end

    def reservation_params
        # params.require(:reservation).permit!
        params.require(:reservation).permit(:persons, :time, :name, :email, :phone_no, :date, :special_request, :dining_table_id)
    end
end
