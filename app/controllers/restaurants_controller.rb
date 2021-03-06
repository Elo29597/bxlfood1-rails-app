class RestaurantsController < ApplicationController


  def index
    #@restaurants = Restaurant.all
    if params[:query].present?
      @restaurants = Restaurant.where(params[:query])
    else
      @restaurants = Restaurant.all
    end
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)


  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to admin_path(@restaurant)
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # no need for app/views/restaurants/destroy.html.erb
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to admin_path, :notice => "Your post has been deleted successfully."
  end
end


private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :description, :photo, :recent, :localisation, :style)
end




