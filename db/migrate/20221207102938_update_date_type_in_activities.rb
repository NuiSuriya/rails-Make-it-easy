class UpdateDateTypeInActivities < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :date, :datetime
  end
end
