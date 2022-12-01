class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: {activity: activity}),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @review = Review.new  # Added this line
    @marker = [@activity].map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: {activity: activity}),
        image_url: helpers.asset_url("logo.png")
      }
    end

  end

end
