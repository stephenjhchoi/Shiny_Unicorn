class BookingsController < ApplicationController
   skip_before_action :authenticate_user!, only: :create

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    string_date = booking_params[:date].split
    year = string_date[0].split("/")[-1].to_i
    month = string_date[0].split("/")[1].to_i
    day = string_date[0].split("/")[0].to_i
    hour = string_date[1].split(":")[0].to_i
    minutes = string_date[1].split(":")[-1].to_i
    @booking.date = DateTime.new(year, day, month, hour, minutes)
    @booking.user = current_user
    if @booking.save
      current_user.earn_point
      redirect_to dashboard_path
    else
      flash[:notice] = "💖 Something went wrong, please try again 💖"
      redirect_to request.referer
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :spot_id)
  end
end
