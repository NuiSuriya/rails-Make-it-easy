class AddParticipantToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :paticipant, :string
  end
end
