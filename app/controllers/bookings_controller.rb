class BookingsController < ApplicationController
   skip_before_action :authenticate_user!, only: :create

  def create
    @booking = Booking.new(booking_params)

    authorize @booking

    @booking.user = current_user
    #@booking.spot =
    if @booking.save
      redirect_to dashboard_path
    else
      #render
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :spot_id)
  end
end
