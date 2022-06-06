class AddAirportToFlight < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :origin, index: true
    # add_foreign_key :flights, :airports, column: :origin_id
    add_reference :flights, :destination, index: true
    # add_foreign_key :flights, :airports, column: :destination_id
  end
end
