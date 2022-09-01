class Order < ApplicationRecord
  belongs_to :user
  belongs_to :meal
  has_many :reviews
  has_many :messages, dependent: :destroy
end
