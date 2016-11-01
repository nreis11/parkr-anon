class ReviewsController < ApplicationController
  before_action :set_city_and_park

  def new
    @review = Review.new

    if request.xhr?
      # render partial: 'form', locals: {city: @city, park: @park, review: @review}
      render html: 'blah'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.park = @park

    if @review.save
      if request.xhr?
        render json: @review
      else
        redirect_to city_park_path(@city, @park)
      end
    else
      @errors = @review.errors.full_messages
      render 'new'
    end
  end

  def update
    if @review.update(review_params)
      redirect_to city_park_path(@city, @park)
    else
      @errors = @review.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to city_park_path(@city, @park)
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :park)
  end

  def set_city_and_park
    @city = City.find(params[:city_id])
    @park = Park.find(params[:park_id])
  end
end
