class UpdateTimeToActivities < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :time, :datetime
    change_column :bookings, :time, :datetime
  end
end
