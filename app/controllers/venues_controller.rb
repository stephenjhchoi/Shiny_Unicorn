class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    @venues = Venue.all
    @venues = @venues.where(area: params[:area]) if !params[:area].blank?
    @venues = @venues.where(category: params[:category]) if !params[:category].blank?
    # @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
    #   marker.lat lesson.latitude
    #   marker.lng lesson.longitude
    # end
  end

  def show
    # @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
    #   marker.lat lesson.latitude
    #   marker.lng lesson.longitude
    # end
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = admin.venues.build(venue_params)
    if @venue.staff_level
      redirect_to venues_path
    else
    end
  end

  def edit
  end

  def update
    if @venue.update(venue_params)
      redirect_to venues_path
    else
      render :edit
    end
  end

  def destroy
    @venue.destroy
    redirect_to venues_path
  end


  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:address, :area, :category, :mood, :description, :price, :light_level, :noise_level, :couch_comfort, :staff_level, :unicorn_score, :distance_from_bed)
  end
end
