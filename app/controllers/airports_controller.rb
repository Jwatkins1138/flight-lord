class AirportsController < ApplicationController

  def new
    @airport = Airport.new(airport_params)
  end

  def create
    @airport = Airport.new(airport_params)
    @airport.save
  end

  private

  def airport_params
    params.require(:event).permit(:name, :symbol)
  end


end
