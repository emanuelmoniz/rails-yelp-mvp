class Admin::RestaurantsController < ApplicationController
  before_action :set_restaurant
  before_action :set_restaurants
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @restaurant.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def set_restaurants
    @restaurants = Restaurant.all
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :img_url)
  end
end
