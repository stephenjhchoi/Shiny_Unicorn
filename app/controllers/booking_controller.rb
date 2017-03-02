class BookingController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @booking = Booking.new(booking_params)
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
    params.require(:booking).permit(:date)
  end
end
