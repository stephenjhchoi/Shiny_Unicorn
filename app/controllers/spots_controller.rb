class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @venue = Venue.find(params[:venue_id])
    @spot = Spot.new(spot_params)
    @spot.venue = @venue
    @spot.save
    redirect_to venue_path(@venue)
  end

  private

  def spot_params
    params.require(:spot).permit(:photo)
  end
end
