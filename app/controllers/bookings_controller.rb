class BookingsController < ApplicationController
  before_action :set_activity, only: %i[new create]

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @activities = current_user.my_map
    @likes = Like.all

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
    @booking = Booking.find(params[:id])
    @review = Review.new  # Added this line
  end

  def new
    @booking = Booking.new
    # @booking.activity = @activity
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "activities/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :participant)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def set_date_and_time
    @date = Date.new(booking_params[:month].to_i, booking_params[:day].to_i)
    @time = Time.new(booking_params[:hour].to_i, booking_params[:minute].to_i)
  end
end
