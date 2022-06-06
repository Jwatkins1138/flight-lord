class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @passenger = Passenger.new(passenger_params)
    @passenger.save
    @booking.passenger = @passenger
    @booking.save
    redirect_to booking_path(@booking)

  end

  def index
    @bookings = Booking.all
    @booking = Booking.find(params[:id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :email)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id, :passenger_params)
  end
end
