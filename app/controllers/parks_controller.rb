class ParksController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @parks = @city.parks
  end

  def show
    @city = City.find(params[:city_id])
    @park = Park.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
    @park = Park.new
  end

  def edit
    @city = City.find(params[:city_id])
    @park = Park.find(params[:id])
  end

  def create
    @city = City.find(params[:city_id])
    @park = Park.new(park_params)
    @park.city = @city

    if @park.save
      # redirect to the park show
      redirect_to city_park_path(@city, @park)
    else
      @errors = @park.errors.full_messages
      # render the new page again
      # for argument to render, look inside view folder, not routes!
      render 'new'
    end
  end

  def update
    @city = City.find(params[:city_id])
    @park = Park.find(params[:id])
    if @park.update(park_params)
      # redirect to the park show
      redirect_to city_park_path(@city, @park)
    else
      @errors = @park.errors.full_messages
      # render the edit page again
      render 'edit'
    end
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :city)
  end

  # being dry

  def set_city_and_park
    @city = City.find(params[:city_id])
    @park = Park.find(params[:id])
  end
end
