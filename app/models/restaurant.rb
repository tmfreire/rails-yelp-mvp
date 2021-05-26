class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, :address, presence: true
  # validates :category
  validates :category, inclusion: { in: CATEGORIES }
end
