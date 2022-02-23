class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :category, :address, presence: true
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORIES }
end
