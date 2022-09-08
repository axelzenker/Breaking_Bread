class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, presence: true
  validates :photos, presence: true
  validates :portions, presence: true
  validates :name, presence: true

  include PgSearch::Model
  pg_search_scope :search,
                  against: %i[name category cuisine details portions diet allergens expiry address],
                  using: {
                    tsearch: { prefix: true }
                  }
end
