class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders
  include PgSearch::Model
  pg_search_scope :search,
                  against: %i[name category cuisine details portions diet allergens expiry],
                  using: {
                    tsearch: { prefix: true }
                  }
end
