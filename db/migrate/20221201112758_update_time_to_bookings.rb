class UpdateTimeToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :time, :string
  end
end
