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
    @booking.space_id = params[:space_id]
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to space_booking_path(@booking.space_id, @booking)
    else
      render 'new'
    end
  end

  def edit
    @space = Space.find(params[:space_id])
  end

  def update
    @booking.update(booking_params)
    redirect_to space_booking_path(@booking.space_id, @booking)
  end

  def destroy
    @booking.destroy
    redirect_to spaces_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :space_id)
  end
end
