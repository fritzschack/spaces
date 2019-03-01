class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @space = Space.find(params[:space_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @space = Space.find(params[:space_id])
    @booking.space = @space
    @booking.user = current_user
    if @booking.save
      redirect_to my_profile_path
    else
      render :new
    end
  end

  def edit
    @space = Space.find(params[:space_id])
  end

  def update
    @booking.update(booking_params)
    redirect_to my_profile_path
  end

  def destroy
    @booking.destroy
    redirect_to my_profile_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :space_id)
  end
end
