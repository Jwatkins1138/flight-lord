class AddFieldToFlight < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure, :datetime
    remove_column :flights, :date, :date
    remove_column :flights, :time, :time
  end
end
