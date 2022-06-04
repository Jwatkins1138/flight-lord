class FlightsController < ApplicationController
  attr_accessor :origin_id
  
  def index
    # @flights = Flight.all
    @search = params['search']
    # @search = flight_params
    if @search.present?
      @origin_id = @search['origin_id']
      @destination_id = @search['destination_id']
      @departure = @search['departure']
      @flights = Flight.where('origin_id = ? AND destination_id = ? AND departure > ?', @origin_id, @destination_id, @departure)
    else 
      @flights = Flight.all  
    end  
  end

  private

  def flight_params
  end

end
