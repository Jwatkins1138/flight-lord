class FlightsController < ApplicationController
  attr_accessor :origin_id, :destination_id, :departure
  
  def index
    @search = params['search']
    if @search.present?
      @origin_id = @search['origin_id']
      @destination_id = @search['destination_id']
      @departure = Date.strptime(@search['departure'], '%Y/%m/%d').to_s
      @departure_range = Date.strptime(@search['departure'], '%Y/%m/%d').next_day(1).to_s
      @flights = Flight.where('origin_id = ? AND destination_id = ? AND departure >= ? AND departure < ?', @origin_id, @destination_id, @departure, @departure_range )
    else 
      @flights = Flight.all  
    end  
  end

  def show
    @flight = Flight.find(params[:id])
    # @booking = @flight.bookings.build
    # @passenger = @flight.passengers.build
    @booking = Booking.new
    @passenger = Passenger.new
  end

  private

end
