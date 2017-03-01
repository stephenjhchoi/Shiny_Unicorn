class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @venues = policy_scope(Venue)
    @venues = Venue.all
    @venues = @venues.where(area: params[:area]) if !params[:area].blank?
    # @venues = @venue.near('Shoreditch', 10)
    @venues = @venues.where(category: params[:category]) if !params[:category].blank?

    cat_array =[]
    cat_array << 'restaurant' if params['restaurant'] == 'on'
    cat_array << 'bar' if params['bar'] == 'on'
    cat_array << 'cafe' if params['cafe'] == 'on'

    @venues = @venues.where(category: cat_array) if cat_array.any?

    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
    end
  end

  def show
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
    end
  end

  def new
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = admin.venues.build(venue_params)
    authorize @venue
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
    authorize @venue
  end

  def venue_params
    params.require(:venue).permit(:name, :address, :area, :category, :mood, :description, :price, :light_level, :noise_level, :couch_comfort, :staff_level, :unicorn_score, :distance_from_bed, :photo)
  end

end
