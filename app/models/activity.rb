class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :category

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
