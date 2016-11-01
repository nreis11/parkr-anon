class ParksController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @parks = @city.parks
  end

  def show
    @park = Park.find(params[:id])
  end
end
