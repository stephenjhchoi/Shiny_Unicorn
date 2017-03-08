class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @venues = policy_scope(Venue)
    @venues = Venue.all
    @venues = @venues.where(area: params[:area]) if !params[:area].blank?
    @venues = @venues.where(mood: params[:mood]) if !params[:mood].blank?
    # @venues = @venue.near('Shoreditch', 10)

    # @venues = @venues.where(category: params[:category]) if !params[:category].blank?

    cat_array = []
    cat_array << 'restaurant' if params['restaurant'] == 'on'
    cat_array << 'bar' if params['bar'] == 'on'
    cat_array << 'cafe' if params['cafe'] == 'on'

    # @venues = @venues.where(category: cat_array) if cat_array.any?

    @venues = @venues.joins(:categories).where(categories: {title: cat_array}) if cat_array.any?

    @venues = @venues.uniq

    session[:area] = params[:area]
    session[:categories] = cat_array

    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      marker.picture({
                  url: view_context.image_path('unicorn-icon.svg'),
                  width: 50,
                  height: 50
                 })
      marker.infowindow render_to_string(partial: "/venues/map_box", locals: { venue: venue })
      marker.json({ id: venue.id })
    end

    # @favorite = Favorite.new
    # @is_favorite = current_user.venues.include? @venue

  end


  def show
    @hash = Gmaps4rails.build_markers(@venue) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      marker.picture({
          url: view_context.image_path('unicorn-icon.svg'),
          width: 40,
          height: 40
          })
    end

    @spot = Spot.new

    @favorite = Favorite.new

    @booking = Booking.new

    @review = Review.new

    if user_signed_in?
    @is_favorite = @venue.favorite?(current_user)

    end
    #checking if current user's favorite venues array includes the venue he's visiting now(@venue)

  end

  def new
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to venues_path
    else
      render :new
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
    params.require(:venue).permit(:name, :address, :area, :category, :mood, :description, :price, :light_level, :noise_level, :couch_comfort, :staff_level, :unicorn_score, :photo)
  end
end
