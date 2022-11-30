class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @activities = Activity.all

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
    @marker = [@activity].map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: {activity: activity}),
        image_url: helpers.asset_url("logo.png")
      }
    end
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_param)
    @activity.user = current_user

    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_param
    params.require(:activity).permit(:name, :location, :date, :time, :price)
  end
end
