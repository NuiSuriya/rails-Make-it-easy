class ReviewsController < ApplicationController

  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)
    @review.activity = @activity
    if @review.save
      redirect_to activity_path(@activity)
    else
      render "activities/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
