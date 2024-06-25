class BookingsController < ApplicationController
  before_action :set_user, only: :new
  before_action :set_travel, only: :new

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      redirect_to booking_path(@booking.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :travel_id, :user_id)
  end

  def set_user
    @user = User.find_by(first_name: "John")
  end

  def set_travel
    @travel = Travel.find(params[:format])
  end
end
