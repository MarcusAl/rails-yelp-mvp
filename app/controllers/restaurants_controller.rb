class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: %i[show edit update destroy]
  def index
    @restaurants = Restaurant.all
  end

  def review
    @review = Restaurant.review
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def edit; end

  private

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
