class AddNameToAirport < ActiveRecord::Migration[7.0]
  def change
    def change
      add_column :airports, :name, :string
      add_column :airports, :symbol, :string
    end
  end
end
