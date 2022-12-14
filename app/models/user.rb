class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :my_map, through: :bookings, source: :activity
  has_one_attached :photo

  has_many :likes, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  multisearchable against: [:username, :email]
end
