class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validate :date, :time, presence: true
end
