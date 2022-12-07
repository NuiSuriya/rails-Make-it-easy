class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @category = Category.find_by(name: params[:category])
      @activities = Activity.where(category: @category)
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
    @like = Like.new
    @categories = Category.all
  end

  def show
    @activity = Activity.find(params[:id])
    @booking = Booking.new
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
    params.require(:activity).permit(:name, :description, :category_id, :location, :date, :time, :price, photos: [])
  end

  def set_date_and_time
    @date = Date.new(activity_param[:month].to_i, activity_param[:day].to_i)
    @time = Date.new(activity_param[:hour].to_i, activity_param[:minute].to_i)
  end
end
