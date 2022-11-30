class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :category

  include PgSearch::Model
  multisearchable against: [:name, :description]

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :description],
    associated_against: {
      user: [:username]
    },
    using: {
      tsearch: { prefix: true }
    }
end
