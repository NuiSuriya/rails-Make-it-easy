class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :date, :time, presence: true
end
