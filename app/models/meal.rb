class Meal < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search,
                  against: %i[name category cuisine details portions diet allergens expiry],
                  using: {
                    tsearch: { prefix: true }
                  }
end
