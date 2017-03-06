class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]
  skip_after_action :verify_policy_scoped
  skip_after_action :verify_authorized
  def create
    @venue= Venue.find(params[:venue_id])
    @review = Review.new(review_params)
    @review.venue = @venue
    @review.user = current_user
    if @review.save
      redirect_to venue_path(@review.venue)
    end
  end

  private

  def review_params
    params.require(:review).permit(:hotness_level, :description, :venue_id)
  end
end
