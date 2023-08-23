class Purchase < ApplicationRecord
  belongs_to :library, optional: true
  validates :status, inclusion: { in: %w(active pending) }, presence: true
  validates :product_id, uniqueness: true
  scope :activated, -> { where(status: 1) }

  enum status: {
    pending: 0,
    active: 1
  }
  enum product_type: {
    movie: 0,
    season: 1
  }
  enum price: {
    basic: 0,
    cinema: 1
  }
end
