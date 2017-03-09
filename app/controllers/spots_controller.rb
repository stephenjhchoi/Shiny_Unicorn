class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @venue = Venue.find(params[:venue_id])
    @spot = Spot.new(spot_params)
    @spot.venue = @venue
    @spot.save
    authorize @spot
    current_user.earn_point
    flash[:notice] = "🦄 You have earned 1 point 🦄"
    redirect_to venue_path(@venue)
  end

  private

  def spot_params
    params.require(:spot).permit(:photo, :name)
  end
end
