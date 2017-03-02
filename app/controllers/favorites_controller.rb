class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index,:show]
  skip_after_action :verify_policy_scoped
  skip_after_action :verify_authorized

  def index
    @favorites = Favorite.all
  end

  def show
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @venue = Venue.find(params[:venue_id])
    @favorite = Favorite.new
    @favorite.venue = @venue
    @favorite.user = current_user
    @favorite.save
    redirect_to venue_path(@venue)
  end

  def edit
  end

  def update
    if @favorite.update(favorte_params)
      redirect_to favorites_path
    else
      render :edit
    end
  end

  def destroy
    @favorite.destroy
    redirect_to favorites_path
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:id)
  end
end
