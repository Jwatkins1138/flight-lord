class Flight < ApplicationRecord

  belongs_to :origin, :class_name => 'Airport', :foreign_key => 'origin_id'
  belongs_to :destination, :class_name => 'Airport', :foreign_key => 'destination_id'
  has_many :bookings
  has_many :passengers, :through => :bookings, :foreign_key => 'passenger_id'


  def origin_sym
    "#{origin.symbol}"
  end

  def destination_sym
    "#{destination.symbol}"
  end

  def date_only
    self.departure.strftime('%Y/%m/%d')
  end

  def search()
  end

end
