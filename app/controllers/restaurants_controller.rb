class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

   def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @new_restaurant = Restaurant.new
  end
end
