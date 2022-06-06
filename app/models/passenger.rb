class Passenger < ApplicationRecord

  has_one :booking
  has_one :flight, :through => :booking, :foreign_key => 'flight_id'

end
