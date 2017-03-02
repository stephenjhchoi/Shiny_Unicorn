class DashboardsController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @venues = Venue.all
    @venues = @venues.where(area: session[:area]) if !session[:area].blank?
    @venues = @venues.joins(:categories).where(categories: {title: session[:categories]}) if session[:categories].blank?
    @recommended_venues = @venues.uniq
  end
end
