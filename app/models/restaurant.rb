class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  # validates :category, presence: true
  validates :category, inclusion: { in: ["belgian", "chinese", "french", "italian", "japanese"] }
  has_many :reviews, dependent: :destroy
end
