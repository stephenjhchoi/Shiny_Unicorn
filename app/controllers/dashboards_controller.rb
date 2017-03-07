class DashboardsController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @venues = Venue.all
    @venues = @venues.where(area: session[:area]) if !session[:area].blank?
    @venues = @venues.joins(:categories).where(categories: {title: session[:categories]}) if session[:categories].blank?
    @recommended_venues = @venues.uniq

    @hash = Gmaps4rails.build_markers(current_user.venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude

      # marker.infowindow = "<%= @venues.first.name %>"

    end
  end
end

# render_to_string(partial: "/venues/map_box", locals: { venue: venue })
