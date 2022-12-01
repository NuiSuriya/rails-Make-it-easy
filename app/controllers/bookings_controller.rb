class BookingsController < ApplicationController
  before_action :set_activity, only: %i[new create]

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new  # Added this line
  end

  def new
    @booking = Booking.new
    @booking.activity = @activity
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end
