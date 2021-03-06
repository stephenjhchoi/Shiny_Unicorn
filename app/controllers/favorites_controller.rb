class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index,:show]
  skip_after_action :verify_policy_scoped
  skip_after_action :verify_authorized

  # def index
  #   @favorites = Favorite.all
  # end

  # def show
  # end

  # def new
  #   @favorite = Favorite.new
  # end

  def create
    @venue = Venue.find(params[:venue_id])
    @favorite = Favorite.new
    @favorite.venue = @venue
    @favorite.user = current_user
    @favorite.save
    flash[:notice] = "🦄 Venue Added To Your Favorites 🦄"
    redirect_to :back
  end

  # def edit
  # end

  # def update
  #   if @favorite.update(favorte_params)
  #     redirect_to favorites_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    # @venue = Venue.find(params[:venue_id])
    # @favorite = current_user.favorites.where(venue_id: params[:venue_id])
    # Favorite.destroy(@favorite.ids.first)
    redirect_to :back
  end

  private

  # def set_favorite
  #   @favorite = Favorite.find(params[:id])
  # end

  # def favorite_params
  #   params.require(:favorite).permit(:id)
  # end
end
