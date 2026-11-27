class Restaurant < ApplicationRecord
  CATEGORIES = %w[belgian chinese french italian japanese].freeze

  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
